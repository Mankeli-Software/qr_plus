part of '../model.dart';

/// {@template qr_plus_error}
/// An error thrown if there is an issue with the QR code data.
/// {@endtemplate}
@freezed
class QrPlusError extends Exception with _$QrPlusError {
  /// {@macro qr_plus_error}
  factory QrPlusError({
    /// Message describing the error.
    String? message,
  }) = _QrPlusError;
}
