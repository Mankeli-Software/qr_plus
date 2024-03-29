part of 'controller.dart';

/// {@template qr_plus_reader_controller}
/// A wrapper around [MobileScannerController], which exposes the same methods while
/// deprecating [MobileScannerController.barcodes]. It is necessary to deprecate it, since
/// the data that the scanner is reading, is the raw data which has to be
/// processed and decoded by package:qr_plus before showing to the package user.
/// {@endtemplate}
class QrPlusReaderController extends MobileScannerController {
  /// {@macro qr_plus_reader_controller}
  QrPlusReaderController({
    super.facing,
    super.detectionSpeed = DetectionSpeed.unrestricted,
    super.detectionTimeoutMs,
    super.torchEnabled,
    super.formats,
    super.returnImage,
    super.autoStart,
  });

  @override
  @Deprecated('barcodes stream is deprecated, use onData callback instead.')
  Stream<BarcodeCapture> get barcodes => super.barcodes;
}
