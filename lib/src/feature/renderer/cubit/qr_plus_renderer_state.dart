part of 'cubit.dart';

///
@freezed
class QrPlusRendererState with _$QrPlusRendererState {
  ///
  const factory QrPlusRendererState({
    required QrPlusMode mode,
    required String plainData,
    QrData? qrData,
    String? data,
    @Default(0) int crumbIndex,
    @Default(ConnectivityResult.mobile) ConnectivityResult connectivity,
  }) = _QrPlusRendererState;
}
