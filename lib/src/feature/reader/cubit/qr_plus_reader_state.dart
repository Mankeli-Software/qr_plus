part of 'cubit.dart';

/// {@template qr_plus_reader_state}
///  A state for [QrPlusReaderCubit]. Contains a cache of read QR codes.
/// {@endtemplate}
@freezed
class QrPlusReaderState with _$QrPlusReaderState {
  /// {@macro qr_plus_reader_state}
  const factory QrPlusReaderState({
    /// A cache of read QR codes.
    @Default(<String, QrPlusData?>{}) Map<String, QrPlusData?> cache,
  }) = _QrPlusReaderState;
}
