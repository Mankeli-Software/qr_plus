part of 'cubit.dart';

/// {@template qr_plus_renderer_state}
///  The state of the [QrPlusRendererCubit]. Contains relevant information for rendering the QR-code.
/// {@endtemplate}
@freezed
class QrPlusRendererState with _$QrPlusRendererState {
  /// {@macro qr_plus_renderer_state}
  const factory QrPlusRendererState({
    /// The security mode used to create the QR-code.
    required QrPlusMode mode,

    /// The plain string data provided by the package user.
    required String plainData,

    /// The [QrPlusData] generated from the [plainData] given by the user.
    @Default(QrPlusData.unknown()) QrPlusData data,

    /// The index of the crumb that is currently being rendered to the user.
    @Default(0) int crumbledDataIndex,

    /// A state of the devices mobile connections. This is relevant for detecting cheating attempts
    /// and constructing the proper [QrPlusAuthenticity].
    @Default(ConnectivityResult.mobile) ConnectivityResult connectivity,

    /// The current status of the screen recorder. This is relevant for detecting cheating attempts
    /// and constructing the proper [QrPlusAuthenticity].
    @Default(ScreenRecorderStatus.recorderOff)
        ScreenRecorderStatus screenRecorderStatus,

    /// A status for detecting cheating attempts by the renderer.
    @Default(QrPlusAuthenticity.authentic) QrPlusAuthenticity authenticity,
  }) = _QrPlusRendererState;
}
