// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_plus/src/feature/reader/controller/controller.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('QrPlusReaderController', () {
    test(
      'barcodes forwards the underlying scanner stream '
      'always',
      () {
        // This used to return const Stream.empty(). 44e26b0 ("fixes issues
        // where reader is too slow") deliberately changed it to forward
        // super.barcodes, but this test was never updated and had been failing
        // ever since. The getter stays deprecated because the values it emits
        // are raw, still-encoded scanner data: consumers want onData instead.
        final controller = QrPlusReaderController();

        expect(controller.barcodes, isA<Stream<BarcodeCapture>>());
        expect(controller.barcodes.isBroadcast, isTrue);
      },
    );
  });
}
