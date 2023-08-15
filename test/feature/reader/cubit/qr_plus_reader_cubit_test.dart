import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qr_plus/qr_plus.dart';
import 'package:qr_plus/src/feature/reader/cubit/cubit.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/repository/repository.dart';

class Callback {
  void call(String s, List<QrPlusAuthenticity> a) {}
}

class MockCallback extends Mock implements Callback {}

class MockNtpRepository extends Mock implements NtpRepository {}

void main() {
  late Callback callback;

  late NtpRepository ntpRepository;

  const rawData = 'abcdefg';

  setUp(() {
    registerFallbackValue(rawData);
    registerFallbackValue(QrPlusAuthenticity.authentic);
    callback = MockCallback();
    ntpRepository = MockNtpRepository();

    when(() => ntpRepository.now).thenReturn(DateTime(2020));
    when(() => callback.call(any<String>(), any<List<QrPlusAuthenticity>>()))
        .thenAnswer((_) {});
  });

  group('QrPlusReaderCubit', () {
    group('onData is called', () {
      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.plain',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.plain(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) => cubit.onRawData(rawData),
        verify: (cubit) =>
            verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
                .called(1),
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.safe',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.safe(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.safe(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.robust',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.robust(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.robust(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.sound',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.sound(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.sound(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.paranoid',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when whole data is received and mode is QrPlusMode.snowden',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.snowden(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.snowden(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'only once when allowDuplicates is false',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'multiple times when allowDuplicates is false',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
          allowDuplicates: true,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(2);
        },
      );
    });

    group('onData is not called', () {
      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when TTL has passed',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now.subtract(const Duration(seconds: 30)),
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verifyNever(
            () => callback.call(rawData, [QrPlusAuthenticity.authentic]),
          );
        },
      );

      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'when readers and renderers mode mismatch',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.sound(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verifyNever(
            () => callback.call(rawData, [QrPlusAuthenticity.authentic]),
          );
        },
      );
    });

    group('onData authencitity', () {
      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'is QrPlusAuthenticity.authentic when data is authentic',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.authentic]))
              .called(1);
        },
      );
      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'is QrPlusAuthenticity.noNetwork when data is authentic',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.noNetwork,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(() => callback.call(rawData, [QrPlusAuthenticity.noNetwork]))
              .called(1);
        },
      );
      blocTest<QrPlusReaderCubit, QrPlusReaderState>(
        'is QrPlusAuthenticity.screenRecording when data is authentic',
        build: () => QrPlusReaderCubit(
          mode: const QrPlusMode.paranoid(),
          onData: callback.call,
          ntpRepository: ntpRepository,
        ),
        act: (cubit) {
          final data = QrPlusData.fromData(
            data: rawData,
            mode: const QrPlusMode.paranoid(),
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.screenRecording,
          );

          for (final c in data.maybeCrumbs!) {
            cubit.onRawData(c.toQrString());
          }
        },
        verify: (cubit) {
          verify(
            () => callback.call(rawData, [QrPlusAuthenticity.screenRecording]),
          ).called(1);
        },
      );
    });
  });
}
