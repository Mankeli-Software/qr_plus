import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/utility/utility.dart';
import 'package:uuid/uuid.dart';

part 'qr_plus_data.gen.dart';

/// {@template qr_plus_data}
/// This class represents data transferred through a QR code. The data is split into one or multiple [QrPlusDataCrumb]s.
/// {@endtemplate}
@freezed
class QrPlusData with _$QrPlusData {
  /// {@macro qr_plus_data}
  const factory QrPlusData({
    required String uid,
    @Default(<QrPlusDataCrumb>[]) List<QrPlusDataCrumb> crumbs,
  }) = _QrPlusData;

  /// {@macro qr_plus_data}
  const factory QrPlusData.unknown() = UnknownQrPlusData;

  const QrPlusData._();

  /// {@macro qr_plus_data}
  ///
  /// Constructor for [QrPlusData] that splits the data into multiple [QrPlusDataCrumb]s.
  factory QrPlusData.fromData({
    required String data,
    required QrPlusMode mode,
    required DateTime timestamp,
    required QrPlusAuthenticity authenticity,

    /// For testing purposes, the UUID can be overriden, otherwise a unique ID is generated.
    Uuid? uuid,
  }) {
    uuid ??= const Uuid();
    final uid = uuid.v4();
    final nrOfCrumbs = mode.maybeCrumbs ?? 1;

    final crumbData = data.slice(nrOfCrumbs);

    return QrPlusData(
      uid: uid,
      crumbs: crumbData
          .map(
            (d) => QrPlusDataCrumb.fromAuthenticity(
              authenticity: authenticity,
              uid: uid,
              data: d,
              mode: mode,
              index: crumbData.indexOf(d),
              crumbs: crumbData.length,
              timestamp: timestamp,
            ),
          )
          .toList(),
    );
  }

  /// Returns `true` if every [QrPlusDataCrumb] in crumbs is valid. Otherwise returns `false`.
  bool isValid({
    required QrPlusMode requiredMode,
    required DateTime now,
  }) {
    if (!isWhole) return false;

    return maybeCrumbs!.every(
      (c) => c.isValid(
        requiredMode: requiredMode,
        now: now,
      ),
    );
  }

  /// Returns `true` if the [QrPlusData] is a whole object (it contains all of the required
  /// crumbs to recreate the original data). Otherwise returns `false`.
  bool get isWhole => (maybeCrumbs?.isNotEmpty ?? false) && maybeCrumbs!.length == maybeCrumbs!.first.maybeCrumbs;

  /// Returns the uid if defined within the object.
  String? get maybeUid => mapOrNull(
        (value) => value.uid,
      );

  /// Returns the crumbs if defined within the object.
  List<QrPlusDataCrumb>? get maybeCrumbs => mapOrNull(
        (value) => value.crumbs,
      );
}
