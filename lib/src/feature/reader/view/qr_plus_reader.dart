part of 'view.dart';

/// {@template qr_plus_reader}
/// A widget for reading QR codes with all the secyrity features provided
/// by package:qr_plus.
/// {@endtemplate}
class QrPlusReader extends StatefulWidget {
  /// {@macro qr_plus_reader}
  const QrPlusReader({
    required this.onData,
    this.mode = const QrPlusMode.plain(),
    super.key,
    this.controller,
    this.fit = BoxFit.cover,
    @Deprecated('Use DetectionSpeed on QrPlusReaderController instead')
        this.allowDuplicates = false,
  });

  /// The security mode of [QrPlusReader]. Note: in order to read QR codes rendered by package:qr_plus,
  /// the renderer and reader must have the same mode.
  final QrPlusMode mode;

  /// The controller of the camera.
  final QrPlusReaderController? controller;

  /// Function that gets called when a QR-code is detected
  /// and the data is parsed.
  final void Function(
    /// The data being read, parsed and processed by package:qr_plus.
    String data,

    ///  A status which indicates whether the QR code is authentic or not. It is up to the user of
    /// this package to decide what to do with the data based on the authenticity status.
    /// Note: [QrPlusAuthenticity.noNetwork] and [QrPlusAuthenticity.screenRecording]
    /// do not guaurantee that the data is not authentic. They only indicate the possibility
    /// that there is some sort of cheating attempt going on.
    ///
    /// NOTE: This field is only used, when [QrPlusReader.mode] is not [QrPlusMode.paranoid] or [QrPlusMode.snowden]. Othwerwise this will always be null.
    QrPlusAuthenticity? authenticity,
  ) onData;

  /// Handles how the widget should fit the screen.
  final BoxFit fit;

  /// Set to false if you don't want duplicate scans.
  @Deprecated('Use DetectionSpeed on QrPlusReaderController instead')
  final bool allowDuplicates;

  @override
  State<QrPlusReader> createState() => _QrPlusReaderState();
}

class _QrPlusReaderState extends State<QrPlusReader> {
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
      child: BlocProvider<QrPlusReaderCubit>(
        create: (context) => QrPlusReaderCubit(
          mode: widget.mode,
          ntpRepository: _ntpRepository,
          onData: widget.onData,
        ),
        child: BlocBuilder<QrPlusReaderCubit, QrPlusReaderState>(
          buildWhen: (_, __) => false,
          builder: (context, state) {
            return MobileScanner(
              controller: widget.controller,
              fit: widget.fit,
              onDetect: (capture) {
                for (final barcode in capture.barcodes) {
                  final data = barcode.rawValue;
                  if (data != null) {
                    context.read<QrPlusReaderCubit>().onRawData(data);
                  }
                }
              },
            );
          },
        ),
      ),
    );
  }
}
