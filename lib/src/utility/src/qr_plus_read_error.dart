/// {@template qr_plus_read_error}
/// Describes why a scanned QR code could not be turned into usable data.
///
/// Without this, a failure to decode is indistinguishable from the camera
/// simply not seeing anything: the reader silently ignores the code and the
/// user is left staring at a viewfinder that never reacts. Surfacing the reason
/// lets the app tell the user what is wrong, and makes misconfiguration
/// (notably a mismatched encryption key) obvious instead of invisible.
/// {@endtemplate}
enum QrPlusReadError {
  /// {@macro qr_plus_read_error}
  ///
  /// The QR code was read, but its contents could not be decrypted or parsed.
  ///
  /// In snowden mode this almost always means the reader and the renderer
  /// disagree on the encryption key, or the code was not produced by
  /// package:qr_plus at all.
  unreadable,

  /// {@macro qr_plus_read_error}
  ///
  /// The data was decoded, but it was created with a different QrPlusMode
  /// than the reader is configured with. The renderer and reader must use the
  /// same mode.
  modeMismatch,
}
