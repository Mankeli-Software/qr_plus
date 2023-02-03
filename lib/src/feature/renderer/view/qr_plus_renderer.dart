part of 'view.dart';

/// {@template qr_code}
/// A widget for rendering a QR code.
/// {@endtemplate}
class QrPlusRenderer extends StatefulWidget {
  /// {@macro qr_code}
  const QrPlusRenderer({
    super.key,
    required this.data,
    this.mode = const QrPlusMode.plain(),
    this.size,
    this.padding = const EdgeInsets.all(10),
    this.backgroundColor = Colors.transparent,
    this.version = QrVersions.auto,
    this.errorCorrectionLevel = QrErrorCorrectLevel.L,
    this.errorStateBuilder,
    this.constrainErrorBounds = true,
    this.gapless = true,
    this.embeddedImage,
    this.embeddedImageStyle,
    this.semanticsLabel = 'qr code',
    this.eyeStyle = const QrEyeStyle(
      eyeShape: QrEyeShape.square,
      color: Colors.black,
    ),
    this.dataModuleStyle = const QrDataModuleStyle(
      dataModuleShape: QrDataModuleShape.square,
      color: Colors.black,
    ),
    this.embeddedImageEmitsError = false,
  });

  /// The mode of the QR code
  final QrPlusMode mode;

  /// The data passed to the widget
  final String data;

  /// The background color of the final QR code widget.
  final Color backgroundColor;

  /// The QR code version to use.
  final int version;

  /// The QR code error correction level to use.
  final int errorCorrectionLevel;

  /// The external padding between the edge of the widget and the content.
  final EdgeInsets padding;

  /// The intended size of the widget.
  final double? size;

  /// The callback that is executed in the event of an error so that you can
  /// interrogate the exception and construct an alternative view to present
  /// to your user.
  final QrErrorBuilder? errorStateBuilder;

  /// If `true` then the error widget will be constrained to the boundary of the
  /// QR widget if it had been valid. If `false` the error widget will grow to
  /// the size it needs. If the error widget is allowed to grow, your layout may
  /// jump around (depending on specifics).
  ///
  /// NOTE: Setting a [size] value will override this setting and both the
  /// content widget and error widget will adhere to the size value.
  final bool constrainErrorBounds;

  /// If set to false, each of the squares in the QR code will have a small
  /// gap. Default is true.
  final bool gapless;

  /// The image data to embed (as an overlay) in the QR code. The image will
  /// be added to the center of the QR code.
  final ImageProvider? embeddedImage;

  /// Styling options for the image overlay.
  final QrEmbeddedImageStyle? embeddedImageStyle;

  /// If set to true and there is an error loading the embedded image, the
  /// [errorStateBuilder] callback will be called (if it is defined). If false,
  /// the widget will ignore the embedded image and just display the QR code.
  /// The default is false.
  final bool embeddedImageEmitsError;

  /// [semanticsLabel] will be used by screen readers to describe the content of
  /// the qr code.
  /// Default is 'qr code'.
  final String semanticsLabel;

  /// Styling option for QR Eye ball and frame.
  final QrEyeStyle eyeStyle;

  /// Styling option for QR data module.
  final QrDataModuleStyle dataModuleStyle;

  @override
  State<QrPlusRenderer> createState() => _QrPlusRendererState();
}

class _QrPlusRendererState extends State<QrPlusRenderer> {
  late NtpRepository _ntpRepository;

  @override
  void initState() {
    _ntpRepository = NtpRepository(mode: widget.mode)..initialize();

    super.initState();
  }

  @override
  void dispose() {
    _ntpRepository.dispose();
    super.dispose();
  }

  String? getData({
    required QrPlusData data,
    required int index,
    required QrPlusMode mode,
  }) {
    return data.mapOrNull(
      authentic: (a) {
        final data = a.toQrString(mode);

        return index.isEven ? data : data.reversed;
      },
      noNetwork: (n) => n.toQrString(mode),
      screenRecording: (s) => s.toQrString(mode),
      crumbled: (c) => getData(
        data: c.crumbs[index],
        index: index,
        mode: mode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<NtpRepository>.value(
      value: _ntpRepository,
      // bad linting rule
      // ignore: arguments-ordering
      child: BlocProvider(
        create: (context) => QrPlusRendererCubit(
          mode: widget.mode,
          plainData: widget.data,
          ntpRepository: _ntpRepository,
        )..initialize(),
        // bad linting rule
        // ignore: arguments-ordering
        child: BlocConsumer<QrPlusRendererCubit, QrPlusRendererState>(
          listener: (context, state) {
            final valid = state.data.isValid(
              requiredMode: widget.mode,
              now: _ntpRepository.now,
              allowNoNetwork: true,
              allowScreenRecording: true,
            );

            if (!valid) {
              context.read<QrPlusRendererCubit>().recreate();
            }
          },
          buildWhen: (s1, s2) => s1.data != s2.data || s1.crumbledDataIndex != s2.crumbledDataIndex,
          builder: (context, state) {
            final data = getData(
              data: state.data,
              index: state.crumbledDataIndex,
              mode: state.mode,
            );

            if (data == null) return const SizedBox();

            return QrImage(
              data: data,
              size: widget.size,
              padding: widget.padding,
              backgroundColor: widget.backgroundColor,
              version: widget.version,
              errorCorrectionLevel: widget.errorCorrectionLevel,
              errorStateBuilder: widget.errorStateBuilder,
              constrainErrorBounds: widget.constrainErrorBounds,
              gapless: widget.gapless,
              embeddedImage: widget.embeddedImage,
              embeddedImageStyle: widget.embeddedImageStyle,
              semanticsLabel: widget.semanticsLabel,
              eyeStyle: widget.eyeStyle,
              dataModuleStyle: widget.dataModuleStyle,
              embeddedImageEmitsError: widget.embeddedImageEmitsError,
            );
          },
        ),
      ),
    );
  }
}
