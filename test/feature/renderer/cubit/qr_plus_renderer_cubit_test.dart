import 'package:bloc_test/bloc_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qr_plus/src/feature/renderer/cubit/cubit.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/repository/repository.dart';
import 'package:qr_plus/src/utility/utility.dart';
import 'package:uuid/uuid.dart';

class MockNtpRepository extends Mock implements NtpRepository {}

class MockUuid extends Mock implements Uuid {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const plainData = 'abcdef';
  const duration = Duration(seconds: 10);
  const uid = 'uid';
  late NtpRepository ntpRepository;
  late Uuid uuid;
  late QrPlusRendererCubit cubit;
  late QrPlusRendererState state;

  setUp(() {
    ntpRepository = MockNtpRepository();
    uuid = MockUuid();
    when(() => uuid.v4()).thenReturn(uid);
    when(() => ntpRepository.now).thenReturn(DateTime(2020));
    cubit = QrPlusRendererCubit(
      mode: const QrPlusMode.snowden(),
      plainData: plainData,
      ntpRepository: ntpRepository,
      duration: duration,
      uuid: uuid,
    );

    state = QrPlusRendererState(
      mode: const QrPlusMode.snowden(),
      plainData: plainData,
      data: QrPlusData.fromData(
        data: plainData,
        mode: const QrPlusMode.snowden(),
        timestamp: ntpRepository.now,
        authenticity: QrPlusAuthenticity.authentic,
        uuid: uuid,
      ),
    );
  });
  group('QrPlusRendererCubit', () {
    blocTest<QrPlusRendererCubit, QrPlusRendererState>(
      'updates data, screenRecorderStatus and authenticity '
      'when onScreenRecordingStatusChanged(true) is called',
      build: () => cubit,
      act: (cubit) => cubit.onScreenRecordingStatusChanged(true),
      seed: () => state,
      expect: () => <QrPlusRendererState>[
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOn,
        ),
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOn,
          authenticity: QrPlusAuthenticity.screenRecording,
        ),
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOn,
          authenticity: QrPlusAuthenticity.screenRecording,
          crumbledDataIndex: 0,
          data: QrPlusData.fromData(
            data: state.plainData,
            mode: state.mode,
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.screenRecording,
            uuid: uuid,
          ),
        ),
      ],
    );

    blocTest<QrPlusRendererCubit, QrPlusRendererState>(
      'updates data, screenRecorderStatus and authenticity '
      'when onScreenRecordingStatusChanged(false) is called',
      seed: () => state.copyWith(
        screenRecorderStatus: ScreenRecorderStatus.recorderOn,
        authenticity: QrPlusAuthenticity.screenRecording,
        data: const QrPlusData.unknown(),
      ),
      build: () => cubit,
      act: (cubit) => cubit.onScreenRecordingStatusChanged(false),
      expect: () => <QrPlusRendererState>[
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOff,
          authenticity: QrPlusAuthenticity.screenRecording,
          data: const QrPlusData.unknown(),
        ),
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOff,
          authenticity: QrPlusAuthenticity.authentic,
          data: const QrPlusData.unknown(),
        ),
        state.copyWith(
          screenRecorderStatus: ScreenRecorderStatus.recorderOff,
          authenticity: QrPlusAuthenticity.authentic,
          crumbledDataIndex: 0,
          data: QrPlusData.fromData(
            data: state.plainData,
            mode: state.mode,
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
            uuid: uuid,
          ),
        ),
      ],
    );

    blocTest<QrPlusRendererCubit, QrPlusRendererState>(
      'updates data, connectivity and authenticity '
      'when onConnectivityChange(ConnectivityResult.none) is called',
      build: () => cubit,
      seed: () => state,
      act: (cubit) => cubit.onConnectivityChange([ConnectivityResult.none]),
      expect: () => <QrPlusRendererState>[
        state.copyWith(
          connectivity: [ConnectivityResult.none],
        ),
        state.copyWith(
          connectivity: [ConnectivityResult.none],
          authenticity: QrPlusAuthenticity.noNetwork,
        ),
        state.copyWith(
          connectivity: [ConnectivityResult.none],
          authenticity: QrPlusAuthenticity.noNetwork,
          crumbledDataIndex: 0,
          data: QrPlusData.fromData(
            data: state.plainData,
            mode: state.mode,
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.noNetwork,
            uuid: uuid,
          ),
        ),
      ],
    );

    blocTest<QrPlusRendererCubit, QrPlusRendererState>(
      'updates data, connectivity and authenticity '
      'when onConnectivityChange(ConnectivityResult.mobile) is called',
      build: () => cubit,
      seed: () => state.copyWith(
        authenticity: QrPlusAuthenticity.noNetwork,
        connectivity: [ConnectivityResult.none],
        data: const QrPlusData.unknown(),
      ),
      act: (cubit) => cubit.onConnectivityChange([ConnectivityResult.mobile]),
      expect: () => <QrPlusRendererState>[
        state.copyWith(
          connectivity: [ConnectivityResult.mobile],
          authenticity: QrPlusAuthenticity.noNetwork,
          data: const QrPlusData.unknown(),
        ),
        state.copyWith(
          connectivity: [ConnectivityResult.mobile],
          authenticity: QrPlusAuthenticity.authentic,
          data: const QrPlusData.unknown(),
        ),
        state.copyWith(
          connectivity: [ConnectivityResult.mobile],
          authenticity: QrPlusAuthenticity.authentic,
          crumbledDataIndex: 0,
          data: QrPlusData.fromData(
            data: state.plainData,
            mode: state.mode,
            timestamp: ntpRepository.now,
            authenticity: QrPlusAuthenticity.authentic,
            uuid: uuid,
          ),
        ),
      ],
    );

    blocTest<QrPlusRendererCubit, QrPlusRendererState>(
      'updateCrumbledDataIndex() updates crumbledDataIndex within the range of crumbs '
      'when called',
      setUp: () => null,
      build: () => cubit,

      /// initial state has 6 crumbs and initial index is 0
      seed: () => state,
      act: (cubit) => cubit
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex()
        ..updateCrumbledDataIndex(),
      expect: () => <QrPlusRendererState>[
        state.copyWith(crumbledDataIndex: 1),
        state.copyWith(crumbledDataIndex: 2),
        state.copyWith(crumbledDataIndex: 3),
        state.copyWith(crumbledDataIndex: 4),
        state.copyWith(crumbledDataIndex: 5),
        state.copyWith(crumbledDataIndex: 0),
        state.copyWith(crumbledDataIndex: 1),
      ],
    );
  });
}
