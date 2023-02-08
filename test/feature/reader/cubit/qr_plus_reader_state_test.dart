import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/feature/reader/cubit/cubit.dart';
import 'package:qr_plus/src/model/model.dart';

void main() {
  group('QrPlusReaderState', () {
    test(
      'supports value equality '
      'always',
      () {
        expect(
          const QrPlusReaderState(),
          const QrPlusReaderState(),
        );
      },
    );

    test(
      'copyWith returns correct object '
      'always',
      () {
        expect(
          const QrPlusReaderState().copyWith(
            cache: {
              '123': const QrPlusData(uid: '123'),
            },
          ),
          const QrPlusReaderState(
            cache: {
              '123': QrPlusData(uid: '123'),
            },
          ),
        );
      },
    );
  });
}
