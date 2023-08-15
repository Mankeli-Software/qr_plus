/// {@template qr_plus_authenticity}
///  A status which indicates whether the QR code is authentic or not. It is up to the user of
/// this package to decide what to do with the data based on the authenticity status.
/// Note: [QrPlusAuthenticity.noNetwork] and [QrPlusAuthenticity.screenRecording]
/// do not guaurantee that the data is not authentic. They only indicate the possibility
/// that there is some sort of cheating attempt going on.
/// {@endtemplate}
enum QrPlusAuthenticity {
  /// {@macro qr_plus_authenticity}
  ///
  /// [QrPlusAuthenticity.authentic] indicates that the QR code is authentic and no cheating attempts were detected.
  authentic,

  /// {@macro qr_plus_authenticity}
  ///
  /// [QrPlusAuthenticity.noNetwork] indicates that the device that generated the QR code was not connected to
  /// the network. This may be an unlucky coincidence or it may be an attempt to cheat; The user may have tried
  /// to disable interned connection to prevent requests to NTP-servers, so the phones time could be manipulated
  /// from the phone settings.
  noNetwork,

  /// {@macro qr_plus_authenticity}
  ///
  /// [QrPlusAuthenticity.screenRecording] indicates that the device that generated the QR code was recording the screen.
  /// This may be an unlucky coincidence or it may be an attempt to cheat; The QR code being recorded may actually belong
  /// to a different user, which is could be considered cheating in some scenarios.
  screenRecording,

  /// {@macro qr_plus_authenticity}
  ///
  /// [QrPlusAuthenticity.timeToLiveExpired] indicates that the QR code has expired.
  timeToLiveExpired,
}
