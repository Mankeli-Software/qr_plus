import 'dart:async';

import 'package:ntp/ntp.dart';
import 'package:qr_plus/src/model/model.dart';

class NtpRepository {
  /// {@macro qr_data_repository}
  NtpRepository({
    required this.mode,
  });

  /// The mode for the package
  final QrPlusMode mode;

  var _ntpOffset = 0;
  Timer? _ntpOffsetTimer;

  /// Initializes the repository
  void initialize() {
    final ntpFetchInterval = mode.mapOrNull(
      sound: (s) => s.ntpFetchInterval,
      paranoid: (r) => r.ntpFetchInterval,
      snowden: (s) => s.ntpFetchInterval,
    );

    if (ntpFetchInterval == null) return;

    _refreshNtpOffset();

    _ntpOffsetTimer = Timer.periodic(
      ntpFetchInterval,
      (_) => _refreshNtpOffset(),
    );
  }

  Future<void> _refreshNtpOffset() async {
    _ntpOffset = await NTP.getNtpOffset();
  }

  /// Returns the current time corrected from a NTP server
  DateTime get now => DateTime.now().add(Duration(milliseconds: _ntpOffset));

  /// Disposes the repository
  void dispose() {
    _ntpOffsetTimer?.cancel();
  }
}
