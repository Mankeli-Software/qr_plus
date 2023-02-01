import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_plus_mode.gen.dart';

@freezed
class QrPlusMode with _$QrPlusMode {
  const factory QrPlusMode.plain() = PlainQrPlusMode;

  const factory QrPlusMode.safe({
    @Default(3) int crumbs,
  }) = SafeQrPlusMode;

  const factory QrPlusMode.robust({
    @Default(3) int crumbs,
    @Default(Duration(seconds: 20)) Duration ttl,
    @Default(Duration(seconds: 30)) Duration ntpFetchInterval,
    @Default(NoConnectionBehavior.hide) NoConnectionBehavior noConnectionBehavior,
  }) = RobustQrPlusMode;

  const factory QrPlusMode.paranoid({
    @Default(6) int crumbs,
    @Default(Duration(seconds: 10)) Duration ttl,
    @Default(Duration(seconds: 5)) Duration ntpFetchInterval,
    @Default(NoConnectionBehavior.hide) NoConnectionBehavior noConnectionBehavior,
    @Default('Xo/VPGxNVzJYU6mszCqpNDzV/CgzxwqKmqunipQusdc=') String encryptionKey,
  }) = ParanoidQrPlusMode;

  // TODO add foil hat security level
  // https://pub.dev/packages/prevent_screen_recording/changelog
  factory QrPlusMode.fromJson(Map<String, dynamic> json) => _$QrPlusModeFromJson(json);
}

enum NoConnectionBehavior {
  hide,
  freeze,
  none,
}
