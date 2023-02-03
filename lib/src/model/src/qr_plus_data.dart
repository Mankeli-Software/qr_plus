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
  }) = AuthenticQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.noNetwork({
    required String id,
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    @JsonKey(includeIfNull: false) int? index,
  }) = NoNetworkQrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.screenRecording({
    required String id,
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    @JsonKey(includeIfNull: false) int? index,
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

    final crumbs = mode.maybeMap(
      safe: (s) => s.crumbs,
      robust: (r) => r.crumbs,
      sound: (s) => s.crumbs,
      paranoid: (p) => p.crumbs,
      snowden: (s) => s.crumbs,
      orElse: () => 3,
    );

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
        );
      } else if (hasScreenRecording) {
        output = QrPlusData.screenRecording(
          id: uid,
          data: crumbData.join(),
          mode: mode,
          timestamp: timestamp,
          index: index,
        );
      } else {
        output = QrPlusData.authentic(
          id: uid,
          data: crumbData.join(),
          mode: mode,
          timestamp: timestamp,
          index: index,
        );
      }

      return output;
    });

    return QrPlusData.crumbled(
      id: uid,
      crumbs: crumbList,
    );
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
    bool allowScreenRecording = false,
    bool allowNoNetwork = false,
  }) {
    if (this is CrumbledQrPlusData) {
      return (this as CrumbledQrPlusData).crumbs.every(
            (crumb) => crumb.isValid(
              requiredMode: requiredMode,
              now: now,
            ),
          );
    }
    if (this is ScreenRecordingQrPlusData && !allowScreenRecording) return false;

    if (this is NoNetworkQrPlusData && !allowNoNetwork) return false;

    final mode = mapOrNull(
      authentic: (a) => a.mode,
      screenRecording: (s) => s.mode,
      noNetwork: (n) => n.mode,
    );

    if (mode == null || mode != requiredMode) return false;

    final ttl = mode.mapOrNull(
      robust: (r) => r.ttl,
      sound: (s) => s.ttl,
      paranoid: (p) => p.ttl,
      snowden: (s) => s.ttl,
    );

    final timestamp = mapOrNull(
      authentic: (a) => a.timestamp,
      screenRecording: (s) => s.timestamp,
      noNetwork: (n) => n.timestamp,
    );

    if (ttl != null) {
      if (timestamp == null) return false;

      return timestamp.difference(now) < ttl;
    }

    return true;
  }
}
