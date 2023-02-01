import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:encrypt/encrypt.dart';
import 'package:ntp/ntp.dart';
import 'package:qr_plus/qr_plus.dart';
import 'package:qr_plus/src/model/model.dart';

/// {@template qr_data_repository}
/// This repository is responsible for creating [QrData]s and validating them
/// based on input data (string) and defined time-to-lives.
/// {@endtemplate}
class QrPlusRepository {
  /// {@macro qr_data_repository}
  QrPlusRepository({
    required this.mode,
  }) : _encrypter = mode.mapOrNull(
          paranoid: (p) => Encrypter(
            AES(Key.fromUtf8(p.encryptionKey)),
          ),
        );

  final Encrypter? _encrypter;

  /// The mode for the package
  final QrPlusMode mode;

  // This is OK, no need to be more descriptive
  // ignore: prefer-correct-identifier-length
  final _iv = IV.fromLength(16);

  var _ntpOffset = 0;
  Timer? _ntpOffsetTimer;

  /// Initializes the repository
  void initialize() {
    final useNTP = mode is RobustQrPlusMode || mode is ParanoidQrPlusMode;

    if (!useNTP) return;

    final ntpFetchInterval = mode.maybeMap(
      robust: (s) => s.ntpFetchInterval,
      paranoid: (r) => r.ntpFetchInterval,
      orElse: () => const Duration(seconds: 30),
    );

    _ntpOffsetTimer = Timer.periodic(
      ntpFetchInterval,
      _refreshNtpOffset,
    );
  }

  /// Disposes the repository
  void dispose() {
    _ntpOffsetTimer?.cancel();
  }

  Future<void> _refreshNtpOffset(Timer timer) async {
    _ntpOffset = await NTP.getNtpOffset();
  }

  /// Creates a [QrData] from the given [data] and [crumbs].
  /// Adds all the necessary ttl and timestamp fields to the [QrDataCrumb]s,
  /// so they can be validated properly.
  QrData? createData(
    /// The actual data being transferred
    String data,
  ) {
    if (mode is PlainQrPlusMode) return null;
    final dataLength = data.length;

    final crumbs = mode.mapOrNull(
      safe: (s) => s.crumbs,
      robust: (r) => r.crumbs,
    );

    final ttl = mode.mapOrNull(
      robust: (s) => s.ttl,
      paranoid: (r) => r.ttl,
    );

    final nrOfCrumbs = min(crumbs!, dataLength);

    final crumbLength = (dataLength / nrOfCrumbs).floor();

    final chars = data.split('');

    final crumbList = List<QrDataCrumb>.generate(nrOfCrumbs, (index) {
      final crumbData = chars.sublist(0, crumbLength);
      chars.removeRange(0, crumbLength);

      if (index == nrOfCrumbs - 1) {
        crumbData.addAll(chars);
      }

      return QrDataCrumb(
        data: crumbData.join(),
        timestamp: DateTime.now().add(Duration(milliseconds: _ntpOffset)),
        index: index,
        ttl: ttl,
        mode: mode,
      );
    });

    return QrData.complete(
      crumbs: crumbList,
    );
  }

  /// Encrypts the given [QrDataCrumb] using the AES algorithm to
  /// a base64 string representation to be shown in qr code.
  String? encrypt(QrDataCrumb data) {
    final json = jsonEncode(data.toJson());

    return _encrypter?.encrypt(json, iv: _iv).base64;
  }

  /// Decrypts the given AES-encrypted [base64] string representation of a [QrDataCrumb]
  QrDataCrumb? decrypt(String base64) {
    if (mode is! RobustQrPlusMode) return null;
    final encrypted = Encrypted.from64(base64);
    final jsonString = _encrypter!.decrypt(encrypted, iv: _iv);
    final json = jsonDecode(jsonString);

    if (json is! Map<String, dynamic>) {
      return QrDataCrumb();
    }

    return QrDataCrumb.fromJson(json);
  }

  /// Validates the given [QrData] by checking if all the [QrDataCrumb]s are still valid and
  /// the whole data is received.
  bool validate(QrData data) {
    if (!data.isValid) {
      return false;
    }

    final now = DateTime.now().add(Duration(milliseconds: _ntpOffset));

    return data.crumbs!.every(
      (crumb) => crumb.timestamp!.difference(now) <= crumb.ttl! && crumb.mode.runtimeType == mode.runtimeType,
    );
  }
}
