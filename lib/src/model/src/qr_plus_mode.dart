// The analyzer does not understand how freezed classes work.
// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_plus_mode.gen.dart';
part 'qr_plus_mode.g.dart';

/// {@template qr_plus_security}
/// LEVELS OF SECURITY
/// 1. (plain) Plain text
/// 2. (safe) Split into multiple pieces
/// 3. (robust) Adds time to live
/// 4. (sound) Checks time from NTP server
/// 5. (paranoid) Adds cheating attempt detection
/// 6. (snowden) Adds encryption
/// {@endtemplate}
@freezed
class QrPlusMode with _$QrPlusMode {
  /// {@macro qr_plus_security}
  const factory QrPlusMode.plain() = PlainQrPlusMode;

  /// {@macro qr_plus_security}
  const factory QrPlusMode.safe({
    @Default(3) int crumbs,
  }) = SafeQrPlusMode;

  /// {@macro qr_plus_security}
  const factory QrPlusMode.robust({
    @Default(3) int crumbs,
    @Default(Duration(seconds: 20)) Duration ttl,
  }) = RobustQrPlusMode;

  /// {@macro qr_plus_security}
  const factory QrPlusMode.sound({
    @Default(3) int crumbs,
    @Default(Duration(seconds: 20)) Duration ttl,
    @JsonKey(includeToJson: false, includeFromJson: false) @Default(Duration(seconds: 5)) Duration ntpFetchInterval,
  }) = SoundQrPlusMode;

  /// {@macro qr_plus_security}
  const factory QrPlusMode.paranoid({
    @Default(6) int crumbs,
    @Default(Duration(seconds: 10)) Duration ttl,
    @JsonKey(includeToJson: false, includeFromJson: false) @Default(Duration(seconds: 5)) Duration ntpFetchInterval,
  }) = ParanoidQrPlusMode;

  /// {@macro qr_plus_security}
  const factory QrPlusMode.snowden({
    @Default(6) int crumbs,
    @Default(Duration(seconds: 10)) Duration ttl,
    @JsonKey(includeToJson: false, includeFromJson: false) @Default(Duration(seconds: 5)) Duration ntpFetchInterval,
    @JsonKey(includeToJson: false, includeFromJson: false) @Default('Pnozx5dIYojIUQCO5KPC3Y/a+6HyBy8=') String encryptionKey,
  }) = SnowdenQrPlusMode;

  const QrPlusMode._();

  /// {@macro qr_plus_security}
  factory QrPlusMode.fromJson(Map<String, dynamic> json) => _$QrPlusModeFromJson(json);

  /// Returns the number of crumbs if it exists within the mode. Otherwise, returns null.
  int? get maybeCrumbs => mapOrNull(
        safe: (mode) => mode.crumbs,
        robust: (mode) => mode.crumbs,
        sound: (mode) => mode.crumbs,
        paranoid: (mode) => mode.crumbs,
        snowden: (mode) => mode.crumbs,
      );

  /// Returns the time to live if it exists within the mode. Otherwise, returns null.
  Duration? get maybeTTL => mapOrNull(
        robust: (mode) => mode.ttl,
        sound: (mode) => mode.ttl,
        paranoid: (mode) => mode.ttl,
        snowden: (mode) => mode.ttl,
      );

  /// Returns the NTP fetch interval if it exists within the mode. Otherwise, returns null.
  Duration? get maybeNTPFetchInterval => mapOrNull(
        sound: (mode) => mode.ntpFetchInterval,
        paranoid: (mode) => mode.ntpFetchInterval,
        snowden: (mode) => mode.ntpFetchInterval,
      );

  /// Returns the encryption key if it exists within the mode. Otherwise, returns null.
  String? get maybeEncryptionKey => mapOrNull(
        snowden: (mode) => mode.encryptionKey,
      );
}
