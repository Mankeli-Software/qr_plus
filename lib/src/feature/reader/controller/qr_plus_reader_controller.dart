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
    super.ratio,
    super.torchEnabled,
    super.formats,
  });

  @override
  @Deprecated('barcodes stream is deprecated, use onData callback instead.')
  Stream<Barcode> get barcodes => const Stream<Barcode>.empty();
}
