part of 'cubit.dart';

///
@freezed
class QrPlusRendererState with _$QrPlusRendererState {
  ///
  const factory QrPlusRendererState({
    required QrPlusMode mode,
    required String plainData,
    @Default(QrPlusData.unknown()) QrPlusData data,
    @Default(0) int crumbledDataIndex,
    @Default(ConnectivityResult.mobile) ConnectivityResult connectivity,
    @Default(ScreenRecorderStatus.recorderOff) ScreenRecorderStatus screenRecorderStatus,
  }) = _QrPlusRendererState;
}
