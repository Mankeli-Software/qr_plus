part of 'cubit.dart';

/// {@template qr_plus_reader_cubit}
///
/// {@endtemplate}
class QrPlusReaderCubit extends Cubit<QrPlusReaderState> {
  /// {@macro qr_plus_reader_cubit}
  QrPlusReaderCubit({
    required this.mode,
    required this.onData,
    required this.ntpRepository,
    this.allowDuplicates = false,
    QrPlusReaderController? controller,
  }) : super(
          QrPlusReaderState(
            controller: controller,
          ),
        );

  /// NTP repository to use for time synchronization.
  final NtpRepository ntpRepository;

  /// The mode of the reader
  final QrPlusMode mode;

  /// Callback to call when data is detected and parsed.
  final void Function(
    String data,
    QrPlusAuthenticity authenticity,
  ) onData;

  /// Whether to call [onData] on duplicate detections or not.
  final bool allowDuplicates;

  /// Called when the [MobileScanner] detects a QR-code.
  /// The input string is the raw data that is read by the scanner,
  /// which will be parsed and decoded by this method.
  void onRawData(String rawData) {
    final data = QrPlusData.fromQrString(rawData, mode);

    /// [id] being null means the data is [UnknownQrPlusData], which we won't process.
    final uid = data.maybeId;
    if (uid == null) return;

    final cachedData = state.cache[uid];
    if (cachedData != null && !allowDuplicates) {
      if (cachedData is CrumbledQrPlusData) {
        final contains = cachedData.crumbs.any(
          (c) => c.maybeIndex == data.maybeIndex,
        );
        if (contains) return;
      } else {
        return;
      }
    }

    final index = data.maybeIndex;

    /// THe [index] being null means the data is a crumb and thus needs to be handled differently.
    return index == null ? _handleData(data, uid) : _handleCrumble(data, uid, index);
  }

  void _handleData(
    QrPlusData data,
    String uid,
  ) {
    final cachedDataString = state.cache[uid]?.maybeData;
    if (cachedDataString != null) return;
    final dataString = data.maybeData;

    final valid = data.isValid(requiredMode: mode, now: ntpRepository.now);
    if (!valid) return;

    _notifyListeners(
      dataString,
      noNetworkDetected: data is NoNetworkQrPlusData,
      screenRecordingDetected: data is ScreenRecordingQrPlusData,
    );

    emit(
      state.copyWith(
        cache: {
          ...state.cache,
          uid: allowDuplicates ? null : data,
        },
      ),
    );
  }

  void _handleCrumble(
    QrPlusData data,
    String uid,
    int index,
  ) {
    final nrOfCrumbs = data.maybeCrumbs;

    /// If crumbs are null, it means the data must be malformatted.
    if (nrOfCrumbs == null) return;

    final cachedData = state.cache[uid] as CrumbledQrPlusData?;

    if (cachedData != null && cachedData.crumbs.length == nrOfCrumbs) return;

    final crumbs = List<QrPlusData>.from(cachedData?.crumbs ?? []);

    final contains = crumbs.any(
      (c) => c.maybeIndex == index,
    );

    if (contains) return;

    final newCrumbs = [...crumbs, data];

    final newData = CrumbledQrPlusData(
      crumbs: newCrumbs,
      id: uid,
    );

    final clearCache = newCrumbs.length == nrOfCrumbs && allowDuplicates;
    emit(
      state.copyWith(
        cache: {
          ...state.cache,
          uid: clearCache ? null : newData,
        },
      ),
    );

    if (newCrumbs.length == nrOfCrumbs) {
      /// The data is complete, so we can notify the listeners.
      ///

      final dataList = [...newData.crumbs]..sort((a, b) => a.maybeIndex!.compareTo(b.maybeIndex!));

      final valid = dataList.every((e) => e.isValid(requiredMode: mode, now: ntpRepository.now));
      if (!valid) return;

      final dataString = dataList.map((c) => c.maybeData).join();
      _notifyListeners(
        dataString,
        noNetworkDetected: crumbs.any((c) => c is NoNetworkQrPlusData),
        screenRecordingDetected: crumbs.any((c) => c is ScreenRecordingQrPlusData),
      );
    }
  }

  /// Notifies the [onData] callback that there is new data.
  void _notifyListeners(
    String? data, {
    bool noNetworkDetected = false,
    bool screenRecordingDetected = false,
  }) {
    if (data == null) return;

    var authenticity = QrPlusAuthenticity.authentic;

    if (screenRecordingDetected) {
      authenticity = QrPlusAuthenticity.screenRecording;
    } else if (noNetworkDetected) {
      authenticity = QrPlusAuthenticity.noNetwork;
    }

    onData(data, authenticity);
  }
}
