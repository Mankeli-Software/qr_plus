// The analyzer does not understand how freezed classes work.
// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:encrypt/encrypt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/utility/utility.dart';

part 'qr_plus_data_crumb.gen.dart';
part 'qr_plus_data_crumb.g.dart';

/// {@template qr_plus_data_crumb}
/// This class represents a single crumb of data transferred through a QR code.
/// The crumb can be encrypted or shown as plain json string, depending on the given [QrPlusMode].
/// {@endtemplate}
@freezed
class QrPlusDataCrumb with _$QrPlusDataCrumb {
  /// {@macro qr_plus_data_crumb}
  const factory QrPlusDataCrumb.unknown() = UnknownQrPlusDataCrumb;

  /// {@macro qr_plus_data_crumb}
  const factory QrPlusDataCrumb.authentic({
    /// A unique identifier for this data. Note: the identifier is the same
    /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
    required String uid,

    /// The actuall piece of data that the package user wants to transfer.
    required String data,

    /// The mode used to create this crumb.
    required QrPlusMode mode,

    /// The timestamp when this crumb was created.
    required DateTime timestamp,

    /// The index of this crumb within the [QrPlusData]s crumbs.
    required int index,

    /// The total number of crumbs within the [QrPlusData]. This data can be useful
    /// when determining if the [QrPlusData] is complete.
    required int crumbs,
  }) = AuthenticQrPlusDataCrumb;

  /// {@macro qr_plus_data_crumb}
  const factory QrPlusDataCrumb.noNetwork({
    /// A unique identifier for this data. Note: the identifier is the same
    /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
    required String uid,

    /// The actuall piece of data that the package user wants to transfer.
    required String data,

    /// The mode used to create this crumb.
    required QrPlusMode mode,

    /// The timestamp when this crumb was created.
    required DateTime timestamp,

    /// The index of this crumb within the [QrPlusData]s crumbs.
    required int index,

    /// The total number of crumbs within the [QrPlusData]. This data can be useful
    /// when determining if the [QrPlusData] is complete.
    required int crumbs,
  }) = NoNetworkQrPlusDataCrumb;

  /// {@macro qr_plus_data_crumb}
  const factory QrPlusDataCrumb.screenRecording({
    /// A unique identifier for this data. Note: the identifier is the same
    /// across multiple [QrPlusDataCrumb]s within the same [QrPlusData].
    required String uid,

    /// The actuall piece of data that the package user wants to transfer.
    required String data,

    /// The mode used to create this crumb.
    required QrPlusMode mode,

    /// The timestamp when this crumb was created.
    required DateTime timestamp,

    /// The index of this crumb within the [QrPlusData]s crumbs.
    required int index,

    /// The total number of crumbs within the [QrPlusData]. This data can be useful
    /// when determining if the [QrPlusData] is complete.
    required int crumbs,
  }) = ScreenRecordingQrPlusDataCrumb;

  const QrPlusDataCrumb._();

  /// {@macro qr_plus_data_crumb}
  ///
  /// Constructor for [QrPlusDataCrumb] that constructs a [QrPlusDataCrumb] from a json object.
  factory QrPlusDataCrumb.fromJson(Map<String, dynamic> json) => _$QrPlusDataCrumbFromJson(json);

  /// {@macro qr_plus_data_crumb}
  ///
  /// Constructor for [QrPlusDataCrumb] that constructs a [QrPlusDataCrumb] from
  /// a [QrPlusAuthenticity].
  factory QrPlusDataCrumb.fromAuthenticity({
    required QrPlusAuthenticity authenticity,
    required String data,
    required String uid,
    required QrPlusMode mode,
    required DateTime timestamp,
    required int index,
    required int crumbs,
  }) {
    switch (authenticity) {
      case QrPlusAuthenticity.authentic:
        return QrPlusDataCrumb.authentic(
          uid: uid,
          data: data,
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: crumbs,
        );
      case QrPlusAuthenticity.noNetwork:
        return QrPlusDataCrumb.noNetwork(
          uid: uid,
          data: data,
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: crumbs,
        );
      case QrPlusAuthenticity.screenRecording:
        return QrPlusDataCrumb.screenRecording(
          uid: uid,
          data: data,
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: crumbs,
        );
    }
  }

  /// {@macro qr_plus_data_crumb}
  ///
  /// Constructs [QrPlusDataCrumb] from a [String] transferred through a QR code.
  /// The input [String] is either a json string or a base64 string.
  factory QrPlusDataCrumb.fromQrString(String data, QrPlusMode mode) {
    final reversed = data.reversed;

    /// If the key is not null, the mode used to create the crumb is [QrPlusMode.snowden],
    /// which means the data is encrypted.
    final key = mode.maybeEncryptionKey;

    return key != null
        ? _tryParseBase64(data, mode) ?? _tryParseBase64(reversed, mode) ?? const QrPlusDataCrumb.unknown()
        : _tryParseJson(data) ?? _tryParseJson(reversed) ?? const QrPlusDataCrumb.unknown();
  }

  /// {@macro qr_plus_data_crumb}
  ///
  /// Tries parsing the [QrPlusDataCrumb] from a json string. Returns `null` if the
  /// parsing fails (the data is invalid or the data is not a json string)
  static QrPlusDataCrumb? _tryParseJson(String data) {
    try {
      return QrPlusDataCrumb.fromJson(jsonDecode(data) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  /// {@macro qr_plus_data_crumb}
  ///
  /// Tries parsing the [QrPlusDataCrumb] from a base64 string. Returns `null` if the
  /// parsing fails (the data is invalid or the data is not a base64 string)
  static QrPlusDataCrumb? _tryParseBase64(String data, QrPlusMode mode) {
    final encryptionKey = mode.mapOrNull(snowden: (s) => s.encryptionKey);
    if (encryptionKey == null) {
      return null;
    }

    try {
      final encrypted = Encrypted.from64(data);
      final encrypter = Encrypter(AES(Key.fromUtf8(encryptionKey)));

      final decrypted = encrypter.decrypt(encrypted, iv: IV.fromLength(16));

      return _tryParseJson(decrypted);
    } catch (_) {
      return null;
    }
  }

  /// {@macro qr_plus_data_crumb}
  ///
  /// Returns a ecrypted base64 [String] representation of the [QrPlusDataCrumb] that can be used
  /// to display the data in a QR code.
  String _toBase64(QrPlusMode mode) {
    final encryptionKey = mode.mapOrNull(snowden: (s) => s.encryptionKey);
    if (encryptionKey == null) return jsonEncode(toJson());

    final encrypter = Encrypter(AES(Key.fromUtf8(encryptionKey)));

    final encrypted = encrypter.encrypt(jsonEncode(toJson()), iv: IV.fromLength(16));

    return encrypted.base64;
  }

  /// {@macro qr_plus_data_crumb}
  ///
  /// Returns a json [String] representation of the [QrPlusDataCrumb] that can be used
  /// to display the data in a QR code.
  String _toJsonString() => jsonEncode(toJson());

  /// {@macro qr_plus_data_crumb}
  ///
  /// Returns a [String] representation of the [QrPlusDataCrumb] that can be used
  /// to display the data in a QR code. Depending on the [mode] the [String] is
  /// either a json string or a base64 string.
  String toQrString(QrPlusMode mode) {
    /// In plain mode, we just return the data without any encryption or metadata.
    if (mode is PlainQrPlusMode) {
      return maybeData ?? '';
    }
    final key = mode.maybeEncryptionKey;

    return key != null ? _toBase64(mode) : _toJsonString();
  }

  /// Returns `true` if this crumb is valid. Otherwise returns false.
  ///
  /// The crumb is validated against the [requiredMode] and the time to live (if present).
  bool isValid({
    required QrPlusMode requiredMode,
    required DateTime now,
  }) {
    final mode = maybeMode;

    if (mode == null || mode != requiredMode) return false;

    final ttl = mode.maybeTTL;

    final timestamp = maybeTimestamp;

    if (timestamp == null) return false;

    if (ttl != null) {
      return timestamp.difference(now) < ttl;
    }

    return true;
  }

  /// Returns index if the index is defined for the object. Otherwise returns null.
  int? get maybeIndex => mapOrNull(
        authentic: (data) => data.index,
        noNetwork: (data) => data.index,
        screenRecording: (data) => data.index,
      );

  /// Returns number of crumbs if the crumbs is defined for the object. Otherwise returns null.
  int? get maybeCrumbs => mapOrNull(
        authentic: (data) => data.crumbs,
        noNetwork: (data) => data.crumbs,
        screenRecording: (data) => data.crumbs,
      );

  /// Returns [QrPlusMode] if the mode is defined for the object. Otherwise returns null.
  QrPlusMode? get maybeMode => mapOrNull(
        authentic: (data) => data.mode,
        noNetwork: (data) => data.mode,
        screenRecording: (data) => data.mode,
      );

  /// Returns timestamp if the timestamp is defined for the object. Otherwise returns null.
  DateTime? get maybeTimestamp => mapOrNull(
        authentic: (data) => data.timestamp,
        noNetwork: (data) => data.timestamp,
        screenRecording: (data) => data.timestamp,
      );

  /// Returns id if the id is defined for the object. Otherwise returns null.
  String? get maybeUid => mapOrNull(
        authentic: (data) => data.uid,
        noNetwork: (data) => data.uid,
        screenRecording: (data) => data.uid,
      );

  /// Returns data if the data is defined for the object. Otherwise returns null.
  String? get maybeData => mapOrNull(
        authentic: (data) => data.data,
        noNetwork: (data) => data.data,
        screenRecording: (data) => data.data,
      );
}
