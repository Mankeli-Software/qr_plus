import 'dart:async';
import 'package:ntp/ntp.dart';
import '../model/model.dart';

/// {@template qr_data_repository}
/// This repository is responsible for creating [QrData]s and validating them
/// based on input data (string) and defined time-to-lives.
/// {@endtemplate}
class QrDataRepository {
  var _ntpOffset = 0;
  Timer? _ntpOffsetTimer;

  /// Initializes the repository
  void initialize() {
    _ntpOffsetTimer = Timer.periodic(
      const Duration(seconds: 10),
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
  QrData createData(
    /// The actual data being transferred
    String data, {
    /// Number of [QrDataCrumb]s to split the [QrData] into
    int crumbs = 3,

    /// Time to live of each [QrDataCrumb] in milliseconds
    int ttl = 15000,
  }) {
    final dataLength = data.length;
    if (dataLength <= crumbs) {
      throw QrPlusError(message: 'Data length must be greater than the number of crumbs.');
    }

    final crumbLength = (dataLength / crumbs).floor();

    final chars = data.split('');

    final crumbList = List<QrDataCrumb>.generate(crumbs, (index) {
      final crumbData = chars.sublist(0, crumbLength);
      chars.removeRange(0, crumbLength);

      if (chars.length < crumbLength) {
        crumbData.addAll(chars);
      }

      return QrDataCrumb(data: crumbData.join(), timestamp: DateTime.now().add(Duration(milliseconds: _ntpOffset)), index: index, ttl: ttl);
    });

    return QrData.complete(
      crumbs: crumbList,
    );
  }

  /// Validates the given [QrData] by checking if all the [QrDataCrumb]s are still valid and
  /// the whole data is received.
  bool validate(QrData data) {
    if (!data.isValid) {
      return false;
    }

    final now = DateTime.now().add(Duration(milliseconds: _ntpOffset));

    return data.crumbs!.every((crumb) => crumb.timestamp!.difference(now).inMilliseconds <= crumb.ttl!);
  }
}
