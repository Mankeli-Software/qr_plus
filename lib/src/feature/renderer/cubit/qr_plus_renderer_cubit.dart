part of 'cubit.dart';

/// {@template qr_plus_renderer_cubit}
/// A cubit for creating and rendering the [QrPlusData] based on the users input (plainData)
/// and the security mode (mode).
/// {@endtemplate}
class QrPlusRendererCubit extends Cubit<QrPlusRendererState> {
  /// {@macro qr_plus_renderer_cubit}
  QrPlusRendererCubit({
    required QrPlusMode mode,
    required String plainData,
    required this.duration,
    required this.ntpRepository,
    @visibleForTesting this.uuid,
  }) : super(
          QrPlusRendererState(
            mode: mode,
            plainData: plainData,
          ),
        );

  /// A repository for getting the REAL current time.
  final NtpRepository ntpRepository;

  /// The [Uuid] can be overridden for testing purposes.
  @visibleForTesting
  final Uuid? uuid;

  /// The duration how long each piece of the QR code is visible.
  final Duration duration;

  ScreenCaptureEvent? _screenCaptureEvent;

  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  Timer? _crumbledDataIndexTimer;

  /// Initializes the cubit by setting up the listeners and timers.
  Future<void> initialize() async {
    recreate();
    _screenCaptureEvent = ScreenCaptureEvent();
    _screenCaptureEvent
        ?.addScreenRecordListener(onScreenRecordingStatusChanged);
    _connectivitySubscription =
        Connectivity().onConnectivityChanged.listen(onConnectivityChange);
    _crumbledDataIndexTimer =
        Timer.periodic(duration, (_) => updateCrumbledDataIndex());
  }

  /// Callback to be called periodically to update the crumbled data index
  /// and change the currently rendered [QrPlusDataCrumb].
  @visibleForTesting
  void updateCrumbledDataIndex() {
    final crumbs = state.data.maybeCrumbs;
    if (crumbs == null) return;

    var newIndex = state.crumbledDataIndex + 1;
    if (newIndex >= crumbs.length) {
      newIndex = 0;
    }
    emit(
      state.copyWith(crumbledDataIndex: newIndex),
    );
  }

  /// Callback to be called when the screen recording status changes.
  @visibleForTesting
  // Its OK here
  // ignore: avoid_positional_boolean_parameters
  void onScreenRecordingStatusChanged(bool isRecording) {
    emit(
      state.copyWith(
        screenRecorderStatus: isRecording
            ? ScreenRecorderStatus.recorderOn
            : ScreenRecorderStatus.recorderOff,
      ),
    );
    maybeUpdateAuthenticity();
  }

  /// Callback to be called when the network connectivity changes.
  @visibleForTesting
  void onConnectivityChange(List<ConnectivityResult> result) {
    emit(
      state.copyWith(
        connectivity: result,
      ),
    );
    maybeUpdateAuthenticity();
  }

  /// Updates the [QrPlusRendererState.authenticity] if the [QrPlusAuthenticity] has possibly changed.
  /// If the authenticity has changed, the [QrPlusData] is recreated.
  @visibleForTesting
  void maybeUpdateAuthenticity() {
    var newAuthenticity = QrPlusAuthenticity.authentic;
    if (state.screenRecorderStatus == ScreenRecorderStatus.recorderOn) {
      newAuthenticity = QrPlusAuthenticity.screenRecording;
    } else if (!state.connectivity
        .any((connectivity) => connectivity.hasNetworkConnection)) {
      newAuthenticity = QrPlusAuthenticity.noNetwork;
    }

    if (newAuthenticity == state.authenticity) return;

    emit(
      state.copyWith(
        authenticity: newAuthenticity,
      ),
    );

    recreate();
  }

  /// Recreates the [QrPlusData] and resets the `crumbledDataIndex` to 0.
  void recreate() {
    final newData = QrPlusData.fromData(
      data: state.plainData,
      mode: state.mode,
      timestamp: ntpRepository.now,
      authenticity: state.authenticity,
      uuid: uuid,
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
    _screenCaptureEvent?.dispose();

    return super.close();
  }
}
