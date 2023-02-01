part of 'cubit.dart';

///
class QrPlusRendererCubit extends Cubit<QrPlusRendererState> {
  ///
  QrPlusRendererCubit({
    required QrPlusMode mode,
    required String plainData,
    required this.qrPlusRepository,
  }) : super(
          QrPlusRendererState(
            mode: mode,
            plainData: plainData,
          ),
        );

  final QrPlusRepository qrPlusRepository;

  Timer? _qrDataTimer;

  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  Future<void> initialize() async {
    if (state.mode is PlainQrPlusMode) return _updateData();

    final noConnectionBehavior = state.mode.maybeMap(
      orElse: () => NoConnectionBehavior.none,
      robust: (robust) => robust.noConnectionBehavior,
      paranoid: (paranoid) => paranoid.noConnectionBehavior,
    );

    if (noConnectionBehavior != NoConnectionBehavior.none) {
      _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
            _updateConnectivity,
          );
    }

    _updateQrData();

    _maybeStartQrDataTimer();
  }

  void _maybeStartQrDataTimer() {
    _qrDataTimer ??= Timer.periodic(
      const Duration(milliseconds: 500),
      _updateCrumbIndex,
    );
  }

  void _stopQrDataTimer() {
    _qrDataTimer?.cancel();
    _qrDataTimer = null;
  }

  void _updateConnectivity(ConnectivityResult connectivity) {
    final noConnectionBehavior = state.mode.maybeMap(
      orElse: () => NoConnectionBehavior.none,
      robust: (robust) => robust.noConnectionBehavior,
      paranoid: (paranoid) => paranoid.noConnectionBehavior,
    );

    if (noConnectionBehavior == NoConnectionBehavior.freeze) {
      if (connectivity == ConnectivityResult.none) {
        _stopQrDataTimer();
      } else {
        _maybeStartQrDataTimer();
      }
    }

    emit(
      state.copyWith(
        connectivity: connectivity,
      ),
    );
  }

  void _updateCrumbIndex(_) {
    final index = state.crumbIndex + 1;

    if (index >= state.qrData!.crumbs!.length) {
      // Has gone through all crumbs, so resets them.
      return _updateQrData();
    }

    emit(
      state.copyWith(
        crumbIndex: index,
      ),
    );
    _updateData();
  }

  void _updateQrData() {
    final qrData = state.mode.mapOrNull(
      safe: (_) => qrPlusRepository.createData(
        state.plainData,
      ),
      robust: (_) => qrPlusRepository.createData(
        state.plainData,
      ),
      paranoid: (_) => qrPlusRepository.createData(
        state.plainData,
      ),
    );

    emit(
      state.copyWith(
        qrData: qrData,
        crumbIndex: 0,
      ),
    );
    _updateData();
  }

  void _updateData() {
    final crumb = state.qrData!.crumbs![state.crumbIndex];
    final data = state.mode.map(
      plain: (_) => state.plainData,
      safe: (_) => jsonEncode(crumb.toJson()),
      robust: (_) => jsonEncode(crumb.toJson()),
      paranoid: (_) => qrPlusRepository.encrypt(crumb),
    );

    emit(
      state.copyWith(
        data: data,
      ),
    );
  }

  @override
  Future<void> close() {
    _stopQrDataTimer();
    _connectivitySubscription?.cancel();

    return super.close();
  }
}
