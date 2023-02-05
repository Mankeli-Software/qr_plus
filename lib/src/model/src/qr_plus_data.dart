// The analyzer does not understand how freezed classes work.
// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:math';

import 'package:encrypt/encrypt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_plus/src/model/src/qr_plus_mode.dart';
import 'package:qr_plus/src/utility/utility.dart';
import 'package:uuid/uuid.dart';

part 'qr_plus_data.gen.dart';
part 'qr_plus_data.g.dart';

/// {@template qr_plus_data}
/// {@endtemplate}
@freezed
class QrPlusData with _$QrPlusData {
  /// {@macro qr_plus_data}
  const factory QrPlusData.unknown() = UnknownQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.crumbled({
    required String id,
    required List<QrPlusData> crumbs,
  }) = CrumbledQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.authentic({
    required String id,
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    @JsonKey(includeIfNull: false) int? index,
    @JsonKey(includeIfNull: false) int? crumbs,
  }) = AuthenticQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.noNetwork({
    required String id,
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    @JsonKey(includeIfNull: false) int? index,
    @JsonKey(includeIfNull: false) int? crumbs,
  }) = NoNetworkQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.screenRecording({
    required String id,
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    @JsonKey(includeIfNull: false) int? index,
    @JsonKey(includeIfNull: false) int? crumbs,
  }) = ScreenRecordingQrPlusData;

  const QrPlusData._();

  /// {@macro qr_plus_data}
  factory QrPlusData.fromJson(Map<String, dynamic> json) => _$QrPlusDataFromJson(json);

  /// {@macro qr_plus_data}
  ///
  /// Constructs [QrPlusData] from a [String] transferred through a QR code.
  /// The input [String] is either a json string or a base64 string.
  factory QrPlusData.fromQrString(String data, QrPlusMode mode) {
    final reversed = data.reversed;

    return _tryParseJson(data) ??
        _tryParseBase64(data, mode) ??
        _tryParseJson(reversed) ??
        _tryParseBase64(reversed, mode) ??
        const QrPlusData.unknown();
  }

  /// {@macro qr_plus_data}
  factory QrPlusData.fromRawData(
    String data,
    QrPlusMode mode,
    DateTime timestamp, {
    bool hasNetwork = true,
    bool hasScreenRecording = false,
  }) {
    final uid = const Uuid().v4();
    if (mode is PlainQrPlusMode) {
      if (!hasNetwork) {
        return QrPlusData.noNetwork(
          id: uid,
          data: data,
          mode: mode,
          timestamp: timestamp,
        );
      }

      if (hasScreenRecording) {
        return QrPlusData.screenRecording(
          id: uid,
          data: data,
          mode: mode,
          timestamp: timestamp,
        );
      }

      return QrPlusData.authentic(
        id: uid,
        data: data,
        mode: mode,
        timestamp: timestamp,
      );
    }

    final dataLength = data.length;

    final crumbs = mode.maybeCrumbs ?? 3;

    final nrOfCrumbs = min(crumbs, dataLength);

    final crumbLength = (dataLength / nrOfCrumbs).floor();

    final chars = data.split('');

    final crumbList = List<QrPlusData>.generate(nrOfCrumbs, (index) {
      final crumbData = chars.sublist(0, crumbLength);
      chars.removeRange(0, crumbLength);

      if (index == nrOfCrumbs - 1) {
        crumbData.addAll(chars);
      }

      QrPlusData output;
      if (!hasNetwork) {
        output = QrPlusData.noNetwork(
          id: uid,
          data: crumbData.join(),
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: nrOfCrumbs,
        );
      } else if (hasScreenRecording) {
        output = QrPlusData.screenRecording(
          id: uid,
          data: crumbData.join(),
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: nrOfCrumbs,
        );
      } else {
        output = QrPlusData.authentic(
          id: uid,
          data: crumbData.join(),
          mode: mode,
          timestamp: timestamp,
          index: index,
          crumbs: nrOfCrumbs,
        );
      }

      return output;
    });

    return QrPlusData.crumbled(
      id: uid,
      crumbs: crumbList,
    );
  }

  static QrPlusData? _tryParseJson(String data) {
    try {
      return QrPlusData.fromJson(jsonDecode(data) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  static QrPlusData? _tryParseBase64(String data, QrPlusMode mode) {
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

  /// {@macro qr_plus_data}
  ///
  /// Returns a [String] representation of the [QrPlusData] that can be used
  /// to display the data in a QR code.
  String _toBase64(QrPlusMode mode) {
    final encryptionKey = mode.mapOrNull(snowden: (s) => s.encryptionKey);
    if (encryptionKey == null) return jsonEncode(toJson());

    final encrypter = Encrypter(AES(Key.fromUtf8(encryptionKey)));

    final encrypted = encrypter.encrypt(jsonEncode(toJson()), iv: IV.fromLength(16));

    return encrypted.base64;
  }

  String toQrString(QrPlusMode mode) {
    if (mode is SnowdenQrPlusMode) {
      return _toBase64(mode);
    }

    return jsonEncode(toJson());
  }

  bool isValid({
    required QrPlusMode requiredMode,
    required DateTime now,
  }) {
    if (this is CrumbledQrPlusData) {
      return (this as CrumbledQrPlusData).crumbs.every(
            (crumb) => crumb.isValid(
              requiredMode: requiredMode,
              now: now,
            ),
          );
    }

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
  String? get maybeId => mapOrNull(
        authentic: (data) => data.id,
        noNetwork: (data) => data.id,
        screenRecording: (data) => data.id,
        crumbled: (data) => data.id,
      );

  /// Returns data if the data is defined for the object. Otherwise returns null.
  String? get maybeData => mapOrNull(
        authentic: (data) => data.data,
        noNetwork: (data) => data.data,
        screenRecording: (data) => data.data,
      );
}
