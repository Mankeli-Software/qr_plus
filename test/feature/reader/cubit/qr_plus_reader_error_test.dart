// Tests for the onReadError path.
//
// Before this existed, a QR code that could not be decrypted was discarded in
// silence: no callback, no log, nothing. That made a total crypto failure look
// identical to "the camera isn't seeing the code", which is exactly what made
// the encrypt 5.0.3 IV regression so slow to diagnose.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qr_plus/qr_plus.dart';
import 'package:qr_plus/src/feature/reader/cubit/cubit.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/repository/repository.dart';

class DataCallback {
  void call(String s, List<QrPlusAuthenticity> a) {}
}

class ErrorCallback {
  void call(QrPlusReadError error) {}
}

class MockDataCallback extends Mock implements DataCallback {}

class MockErrorCallback extends Mock implements ErrorCallback {}

class MockNtpRepository extends Mock implements NtpRepository {}

void main() {
  late DataCallback onData;
  late ErrorCallback onReadError;
  late NtpRepository ntpRepository;

  const mode = QrPlusMode.snowden(
    encryptionKey: 'abcdefghijklmnopqrstuvwx',
    ttl: Duration(minutes: 5),
    crumbs: 2,
  );

  setUp(() {
    registerFallbackValue(QrPlusReadError.unreadable);
    onData = MockDataCallback();
    onReadError = MockErrorCallback();
    ntpRepository = MockNtpRepository();

    when(() => ntpRepository.now).thenReturn(DateTime(2026));
    when(() => onReadError.call(any<QrPlusReadError>())).thenAnswer((_) {});
  });

  group('QrPlusReaderCubit onReadError', () {
    blocTest<QrPlusReaderCubit, QrPlusReaderState>(
      'is called with unreadable '
      'when the code cannot be decrypted',
      build: () => QrPlusReaderCubit(
        mode: mode,
        onData: onData.call,
        onReadError: onReadError.call,
        ntpRepository: ntpRepository,
      ),
      act: (cubit) => cubit.onRawData('not-a-qr-plus-code'),
      verify: (_) => verify(
        () => onReadError.call(QrPlusReadError.unreadable),
      ).called(1),
    );

    blocTest<QrPlusReaderCubit, QrPlusReaderState>(
      'is called with unreadable '
      'when the code was encrypted with a different key',
      build: () => QrPlusReaderCubit(
        mode: mode,
        onData: onData.call,
        onReadError: onReadError.call,
        ntpRepository: ntpRepository,
      ),
      act: (cubit) {
        final foreign = QrPlusDataCrumb.authentic(
          uid: 'uid',
          data: 'data',
          mode: const QrPlusMode.snowden(
            encryptionKey: 'XXXXXXXXXXXXXXXXXXXXXXXX',
          ),
          timestamp: DateTime.utc(2026),
          index: 0,
          crumbs: 2,
        ).toQrString();

        return cubit.onRawData(foreign);
      },
      verify: (_) => verify(
        () => onReadError.call(QrPlusReadError.unreadable),
      ).called(1),
    );

    blocTest<QrPlusReaderCubit, QrPlusReaderState>(
      'is not called '
      'when the code decrypts successfully',
      build: () => QrPlusReaderCubit(
        mode: mode,
        onData: onData.call,
        onReadError: onReadError.call,
        ntpRepository: ntpRepository,
      ),
      act: (cubit) {
        final valid = QrPlusDataCrumb.authentic(
          uid: 'uid',
          data: 'data',
          mode: mode,
          timestamp: DateTime.utc(2026),
          index: 0,
          crumbs: 2,
        ).toQrString();

        return cubit.onRawData(valid);
      },
      verify: (_) => verifyNever(() => onReadError.call(any())),
    );

    blocTest<QrPlusReaderCubit, QrPlusReaderState>(
      'does not throw '
      'when no onReadError handler is provided',
      build: () => QrPlusReaderCubit(
        mode: mode,
        onData: onData.call,
        ntpRepository: ntpRepository,
      ),
      act: (cubit) => cubit.onRawData('not-a-qr-plus-code'),
    );
  });
}
