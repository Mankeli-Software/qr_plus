part of 'cubit.dart';

///
class QrPlusRendererCubit extends Cubit<QrPlusRendererState> {
  ///
  QrPlusRendererCubit({
    required QrPlusMode mode,
    required String plainData,
    required this.ntpRepository,
  }) : super(
          QrPlusRendererState(
            mode: mode,
            plainData: plainData,
          ),
        );

  final NtpRepository ntpRepository;

  final ScreenCaptureEvent _screenCaptureEvent = ScreenCaptureEvent();

  StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  Timer? _crumbledDataIndexTimer;

  Future<void> initialize() async {
    recreate();

    _screenCaptureEvent.addScreenRecordListener(_onScreenRecordingStatusChanged);
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(_onConnectivityChange);
    _crumbledDataIndexTimer = Timer.periodic(const Duration(milliseconds: 250), (_) => _updateCrumbledDataIndex());
  }

  void _updateCrumbledDataIndex() {
    if (state.data is! CrumbledQrPlusData) return;

    final crumbledData = state.data as CrumbledQrPlusData;

    var newIndex = state.crumbledDataIndex + 1;
    if (newIndex >= crumbledData.crumbs.length) {
      newIndex = 0;
    }
    emit(
      state.copyWith(crumbledDataIndex: newIndex),
    );
  }

  void _onScreenRecordingStatusChanged(bool isRecording) {
    emit(
      state.copyWith(
        screenRecorderStatus: isRecording ? ScreenRecorderStatus.recorderOn : ScreenRecorderStatus.recorderOff,
      ),
    );
    maybeRecreate();
  }

  void _onConnectivityChange(ConnectivityResult result) {
    emit(state.copyWith(connectivity: result));
    maybeRecreate();
  }

  void maybeRecreate() {
    final hasNetwork = state.connectivity.hasNetworkConnection;
    final hasScreenRecording = state.screenRecorderStatus == ScreenRecorderStatus.recorderOn;

    var type = AuthenticQrPlusData;
    if (!hasNetwork) {
      type = NoNetworkQrPlusData;
    } else if (hasScreenRecording) {
      type = ScreenRecordingQrPlusData;
    }

    if (state.data.runtimeType == type) return;

    recreate();
  }

  void recreate() {
    final newData = QrPlusData.fromRawData(
      state.plainData,
      state.mode,
      ntpRepository.now,
      hasNetwork: state.connectivity.hasNetworkConnection,
      hasScreenRecording: state.screenRecorderStatus == ScreenRecorderStatus.recorderOn,
    );

    emit(
      state.copyWith(
        data: newData,
        crumbledDataIndex: 0,
      ),
    );
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    _crumbledDataIndexTimer?.cancel();
    _screenCaptureEvent.dispose();
    return super.close();
  }
}
