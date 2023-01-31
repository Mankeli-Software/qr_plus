part of '../model.dart';

/// {@template qr_data_crumb}
/// A representation of a smaller piece of [QrData]. Multiple [QrDataCrumb]s can be
/// combined to form the complete [QrData].
/// {@endtemplate}
@freezed
class QrDataCrumb with _$QrDataCrumb {
  /// {@macro qr_data_crumb}
  factory QrDataCrumb({
    /// The actual data being transferred
    String? data,

    /// NTP offsetted timestamp of when the [QrDataCrumb] was created
    DateTime? timestamp,

    /// Index of this [QrDataCrumb] within [QrData]
    int? index,

    /// Time to live of this [QrDataCrumb] in milliseconds
    int? ttl,
  }) = _QrDataCrumb;

  QrDataCrumb._();

  /// {@macro qr_data_crumb}
  factory QrDataCrumb.fromJson(Map<String, dynamic> json) => _$QrDataCrumbFromJson(json);

  /// Compares two [QrDataCrumb]s by their [index] within [QrData].
  int compareTo(QrDataCrumb other) => index!.compareTo(other.index!);

  /// Returns `true` if the [QrDataCrumb] is valid (contains all the required fields). Otherwise returns `false`.
  bool get isValid => data != null && timestamp != null && index != null && ttl != null;
}
