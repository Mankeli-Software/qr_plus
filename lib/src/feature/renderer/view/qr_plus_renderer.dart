part of 'view.dart';

/// {@template qr_plus_renderer}
/// A widget for rendering a QR code with all the secyrity features provided
/// by package:qr_plus.
/// {@endtemplate}
class QrPlusRenderer extends StatefulWidget {
  /// {@macro qr_plus_renderer}
  QrPlusRenderer({
    super.key,
    required this.data,
    this.mode = const QrPlusMode.plain(),
    this.duration = const Duration(milliseconds: 250),
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
  }) {
    final crumbs = mode.maybeCrumbs;
    final ttl = mode.maybeTTL;

    if (crumbs != null && ttl != null) {
      final wholeDuration =
          Duration(milliseconds: crumbs * duration.inMilliseconds);
      assert(
        wholeDuration <= ttl,
        'mode.ttl must be greater than the time it takes to display all crumbs. Otherwise no reader can read the code.',
      );
    }
  }

  /// The security mode of [QrPlusRenderer]. Note: in order to read QR codes rendered by package:qr_plus,
  /// the renderer and reader must have the same mode.
  final QrPlusMode mode;

  /// The data passed to the widget
  final String data;

  /// The duration how long each piece of the QR code is visible.
  final Duration duration;

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

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<NtpRepository>.value(
      value: _ntpRepository,
      child: BlocProvider(
        create: (context) => QrPlusRendererCubit(
          mode: widget.mode,
          plainData: widget.data,
          duration: widget.duration,
          ntpRepository: _ntpRepository,
        )..initialize(),
        child: BlocConsumer<QrPlusRendererCubit, QrPlusRendererState>(
          listener: (context, state) {
            final valid = state.data.isValid(
              requiredMode: widget.mode,
              now: _ntpRepository.now,
            );

            if (!valid) {
              context.read<QrPlusRendererCubit>().recreate();
            }
          },
          buildWhen: (s1, s2) =>
              s1.data != s2.data ||
              s1.crumbledDataIndex != s2.crumbledDataIndex,
          builder: (context, state) {
            final data =
                state.data.maybeCrumbs?[state.crumbledDataIndex].toQrString();

            if (data == null) return const SizedBox();

            return QrImageView(
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
