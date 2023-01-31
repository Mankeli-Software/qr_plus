part of '../model.dart';

/// {@template qr_data}
/// A representation of the data being transferred with a QR code. Can be either
/// QrData.complete when all of the [QrDataCrumb]s are already received or QrData.incomplete
/// when some of the [QrDataCrumb]s are still missing.
/// {@endtemplate}
@freezed
class QrData with _$QrData {
  /// {@macro qr_data}
  factory QrData.complete({
    required List<QrDataCrumb> crumbs,
  }) = CompleteQrData;

  /// {@macro qr_data}
  factory QrData.incomplete({
    List<QrDataCrumb>? crumbs,
  }) = IncompleteQrData;

  QrData._();

  /// Returns `true` if the [QrData] and all of its [QrDataCrumb]s are valid (contains all the required
  /// fields and is a [QrData.coplete()]). Otherwise returns `false`.
  bool get isValid => this is CompleteQrData && (this as CompleteQrData).crumbs.every((e) => e.isValid);

  /// Returns the data contained in the [QrData] if it is valid (see [isValid]). Otherwise returns `null`.
  String? getData() {
    if (!isValid) {
      return null;
    }

    crumbs!.sort((a, b) => a.compareTo(b));

    return crumbs!.map((e) => e.data).join();
  }
}
