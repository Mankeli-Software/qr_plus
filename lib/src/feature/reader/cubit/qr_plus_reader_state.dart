part of 'cubit.dart';

@freezed
class QrPlusReaderState with _$QrPlusReaderState {
  const factory QrPlusReaderState({
    @Default(<String, QrPlusData?>{}) Map<String, QrPlusData?> cache,
    QrPlusReaderController? controller,
  }) = _QrPlusReaderState;
}
