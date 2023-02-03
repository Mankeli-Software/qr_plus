part of 'cubit.dart';

class QrPlusReaderCubit extends Cubit<QrPlusReaderState> {
  QrPlusReaderCubit({
    required this.mode,
    required this.onDetect,
    this.allowDuplicates = false,
  }) : super(QrPlusReaderState());

  /// The mode of the reader
  final QrPlusMode mode;

  /// Callback to call when data is detected and parsed.
  final void Function(String data) onDetect;

  /// Whether to call [onDetect] on duplicate detections or not.
  final bool allowDuplicates;

  void onData(String rawData) {
    final data = QrPlusData.fromQrString(rawData, mode);

    if (data is UnknownQrPlusData) return;

    final index = data.mapOrNull(
      authentic: (a) => a.index,
      noNetwork: (n) => n.index,
      screenRecording: (s) => s.index,
    );

    final id = data.mapOrNull(
      authentic: (a) => a.id,
      noNetwork: (n) => n.id,
      screenRecording: (s) => s.id,
    );

    if (id == null) return;

    final cachedData = state.cache[id];

    /// TODO: figure this out.
  }
}
