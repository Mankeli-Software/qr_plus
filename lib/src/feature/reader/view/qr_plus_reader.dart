part of 'view.dart';

/// {@template qr_plus_reader}
/// A reader for package:qr_plus
/// {@endtemplate}
class QrPlusReader extends StatefulWidget {
  /// {@macro qr_plus_reader}
  const QrPlusReader({
    this.mode = const QrPlusMode.plain(),
    super.key,
    this.controller,
    required this.onDetect,
    this.fit = BoxFit.cover,
    this.allowDuplicates = false,
  });

  /// The security mode of [QrPlusReader].
  final QrPlusMode mode;

  /// The controller of the camera.
  final QrPlusReaderController? controller;

  /// Function that gets called when a QR-code is detected
  /// and the data is parsed.
  final void Function(String data) onDetect;

  /// Handles how the widget should fit the screen.
  final BoxFit fit;

  /// Set to false if you don't want duplicate scans.
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
      child: BlocBuilder<QrPlusReaderCubit, QrPlusReaderState>(
        builder: (context, state) {
          return MobileScanner(
            controller: MobileScannerController(
              facing: widget.controller?.facing ?? CameraFacing.back,
              ratio: widget.controller?.ratio,
              torchEnabled: widget.controller?.torchEnabled,
              formats: widget.controller?.formats,
            ),
            allowDuplicates: true,
            fit: widget.fit,
            onDetect: (barcode, _) {
              final data = barcode.rawValue;
              if (data != null) {
                QrPlusData.fromQrString(data, widget.mode);
              }
            },
          );
        },
      ),
    );
  }
}
