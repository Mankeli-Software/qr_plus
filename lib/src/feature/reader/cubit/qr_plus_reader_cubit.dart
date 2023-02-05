part of 'cubit.dart';

/// {@template qr_plus_reader_cubit}
/// A cubit that handles the reading of QR codes, caching them and notifying
/// the package user about new data.
/// {@endtemplate}
class QrPlusReaderCubit extends Cubit<QrPlusReaderState> {
  /// {@macro qr_plus_reader_cubit}
  QrPlusReaderCubit({
    required this.mode,
    required this.onData,
    required this.ntpRepository,
    this.allowDuplicates = false,
  }) : super(const QrPlusReaderState());

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
    final data = QrPlusDataCrumb.fromQrString(rawData, mode);

    /// [id] being null means the data is [UnknownQrPlusData], which we won't process.
    final uid = data.maybeUid;
    if (uid == null) return;

    final cachedData = state.cache[uid];

    /// We won't unnecessarily call the rather expensive _handleData method if its
    /// not necessary.
    if (cachedData != null && !allowDuplicates) {
      if (cachedData.isValid(requiredMode: mode, now: ntpRepository.now)) return;
    }

    return _handleData(data);
  }

  /// Actual handler for checking & uddating cache and notifying the package user.
  void _handleData(QrPlusDataCrumb crumb) {
    final uid = crumb.maybeUid!;
    final crumbs = state.cache[uid]?.maybeCrumbs ?? [];

    final newCrumbs = [
      crumb,
      ...crumbs.where((c) => c.maybeIndex != crumb.maybeIndex),
    ];

    final data = QrPlusData(
      uid: crumb.maybeUid!,
      crumbs: newCrumbs,
    );

    final valid = data.isValid(requiredMode: mode, now: ntpRepository.now);
    if (valid) {
      /// Converts the crumbs into a string
      final dataList = [...newCrumbs]..sort((a, b) => a.maybeIndex!.compareTo(b.maybeIndex!));
      final dataString = dataList.map((c) => c.maybeData).join();

      _notifyListeners(
        dataString,
        noNetworkDetected: newCrumbs.any((c) => c is NoNetworkQrPlusDataCrumb),
        screenRecordingDetected: newCrumbs.any((c) => c is ScreenRecordingQrPlusDataCrumb),
      );
    }

    final clearCache = valid && allowDuplicates;
    emit(
      state.copyWith(
        cache: {
          ...state.cache,
          uid: clearCache ? null : data,
        },
      ),
    );
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
