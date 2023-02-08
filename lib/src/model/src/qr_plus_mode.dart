// The analyzer does not understand how freezed classes work.
// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_plus_mode.gen.dart';
part 'qr_plus_mode.g.dart';

/// {@template qr_plus_mode}
/// This class represents different levels of security to be used within
/// package:qr_plus. Each layer adds more security to the data transfer,
/// and the layer to be used and their parameters are determined by the
/// package user to fit their needs. Each layer adds the layer specific
/// configuration on top of the previouse layers configuration.
/// The available layers
/// (from least to most secure) are:
/// 1. [QrPlusMode.plain]:
///   - This layer does not contain any security features.
///
/// 2. [QrPlusMode.safe]:
///  - This layer splits the data into multiple pieces.
///  - On the renderers side, the pieces are shown one by one for a short period of time.
///  - On the readers side, the pieces are scanned one by one and combined to form the original data.
///
/// 3. [QrPlusMode.robust]:
///  - This layer adds a TTL (time-to-live) to the data, so that the data is valid only for a given
///    period of time.
///
/// 4. [QrPlusMode.sound]:
/// - This layer adds a NTP (network time protocol) check to the current time, so that the TTL can be properly checked
///   on both the renderers and readers side.
///
/// 5. [QrPlusMode.paranoid]:
/// - This layer adds tooling to detect possible cheating attemps by the renderer. The reader will be notified
///   if the renderer has tampered with network connection (to try and cheat the NTP check) or if the renderer
///   has a screen recorder on (maybe trying to social engineer a different users QR code).
/// 6. [QrPlusMode.snowden]:
/// - This layer adds encryption to the data, so that the data can only be read by the reader from package:qr_plus.
/// {@endtemplate}
@freezed
class QrPlusMode with _$QrPlusMode {
  /// {@macro qr_plus_mode}
  const factory QrPlusMode.plain() = PlainQrPlusMode;

  /// {@macro qr_plus_mode}
  const factory QrPlusMode.safe({
    /// The number of pieces the data is split into.
    /// Defaults to 3.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(3)
        int crumbs,
  }) = SafeQrPlusMode;

  /// {@macro qr_plus_mode}
  const factory QrPlusMode.robust({
    /// The number of pieces the data is split into.
    /// Defaults to 3.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(3)
        int crumbs,

    /// The time-to-live of the data, which defines how long the data is valid.
    /// Defaults to 20 seconds.
    @Default(Duration(seconds: 20)) Duration ttl,
  }) = RobustQrPlusMode;

  /// {@macro qr_plus_mode}
  const factory QrPlusMode.sound({
    /// The number of pieces the data is split into.
    /// Defaults to 3.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(3)
        int crumbs,

    /// The time-to-live of the data, which defines how long the data is valid.
    /// Defaults to 20 seconds.
    @Default(Duration(seconds: 20)) Duration ttl,

    /// The interval at which the NTP check is performed.
    /// Defaults to 5 seconds.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(Duration(seconds: 5))
        Duration ntpFetchInterval,
  }) = SoundQrPlusMode;

  /// {@macro qr_plus_mode}
  const factory QrPlusMode.paranoid({
    /// The number of pieces the data is split into.
    /// Defaults to 3.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(6)
        int crumbs,

    /// The time-to-live of the data, which defines how long the data is valid.
    /// Defaults to 20 seconds.
    @Default(Duration(seconds: 20)) Duration ttl,

    /// The interval at which the NTP check is performed.
    /// Defaults to 5 seconds.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(Duration(seconds: 5))
        Duration ntpFetchInterval,
  }) = ParanoidQrPlusMode;

  /// {@macro qr_plus_mode}
  const factory QrPlusMode.snowden({
    /// The number of pieces the data is split into.
    /// Defaults to 3.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(6)
        int crumbs,

    /// The time-to-live of the data, which defines how long the data is valid.
    /// Defaults to 20 seconds.
    @Default(Duration(seconds: 20)) Duration ttl,

    /// The interval at which the NTP check is performed.
    /// Defaults to 5 seconds.
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(Duration(seconds: 5))
        Duration ntpFetchInterval,

    /// The encryption key to be used to encrypt the data. Please, change your own key here and do not use the default one.
    /// Also make sure to store your key in a secure place. See https://pub.dev/packages/flutter_dotenv for more info on how to store your key.
    ///
    /// NOTE: The key length should be 128/192/256 bits (16/24/32 bytes/characters).
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default('Pnozx5dIYojIUQCO5KPC3Y/a+6HyBy8=')
        String encryptionKey,
  }) = SnowdenQrPlusMode;

  const QrPlusMode._();

  /// {@macro qr_plus_mode}
  factory QrPlusMode.fromJson(Map<String, dynamic> json) =>
      _$QrPlusModeFromJson(json);

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
