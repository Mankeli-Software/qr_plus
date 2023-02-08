import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_plus/src/feature/reader/controller/controller.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('QrPlusReaderController', () {
    test(
      'barcodes will return empty stream '
      'always',
      () {
        // For testing purposes only
        // ignore: deprecated_member_use_from_same_package
        expect(QrPlusReaderController().barcodes, const Stream<Barcode>.empty());
      },
    );
  });
}
