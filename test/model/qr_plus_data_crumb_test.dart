import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/utility/utility.dart';

void main() {
  group('QrPlusDataCrumb', () {
    group('isValid', () {
      late QrPlusDataCrumb crumb;

      setUp(() {
        crumb = QrPlusDataCrumb.authentic(
          uid: 'uid',
          data: 'data',
          mode: const QrPlusMode.safe(),
          timestamp: DateTime.now(),
          index: 1,
          crumbs: 2,
        );
      });
      test(
        'is false '
        'when requiredMode is not the crumbs mode',
        () {
          expect(
            crumb.isValid(
              requiredMode: const QrPlusMode.plain(),
              now: DateTime(2021),
            ),
            isFalse,
          );
        },
      );

      test(
        'is false '
        'when ttl has passed',
        () {
          expect(
            crumb.isValid(
              requiredMode: const QrPlusMode.sound(
                ttl: Duration(seconds: 10),
              ),
              now: DateTime.now().add(const Duration(seconds: 11)),
            ),
            isFalse,
          );
        },
      );
    });

    group('fromAuthenticity', () {
      test(
        'returns AuthenticQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.authentic',
        () {
          expect(
            QrPlusDataCrumb.fromAuthenticity(
              authenticity: QrPlusAuthenticity.authentic,
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            isA<AuthenticQrPlusDataCrumb>(),
          );
        },
      );
      test(
        'returns NoNetworkQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.noNetwork',
        () {
          expect(
            QrPlusDataCrumb.fromAuthenticity(
              authenticity: QrPlusAuthenticity.noNetwork,
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            isA<NoNetworkQrPlusDataCrumb>(),
          );
        },
      );

      test(
        'returns ScreenRecordingQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.screenRecording',
        () {
          expect(
            QrPlusDataCrumb.fromAuthenticity(
              authenticity: QrPlusAuthenticity.screenRecording,
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            isA<ScreenRecordingQrPlusDataCrumb>(),
          );
        },
      );
    });

    group('unknown', () {
      test(
        'uses value equality '
        'always',
        () {
          expect(
            const QrPlusDataCrumb.unknown(),
            const QrPlusDataCrumb.unknown(),
          );
        },
      );

      test(
        'is UnknownQrPlusDataCrumb '
        'always',
        () {
          expect(
            const QrPlusDataCrumb.unknown(),
            isA<UnknownQrPlusDataCrumb>(),
          );
        },
      );
    });
    group('authentic', () {
      late QrPlusDataCrumb crumb;

      setUp(() {
        crumb = QrPlusDataCrumb.authentic(
          uid: 'uid',
          data: 'data',
          mode: const QrPlusMode.snowden(),
          timestamp: DateTime(2021),
          index: 1,
          crumbs: 2,
        );
      });

      test(
        'is AuthenticQrPlusDataCrumb '
        'always',
        () {
          expect(crumb, isA<AuthenticQrPlusDataCrumb>());
        },
      );

      test(
        'uses value equality '
        'always',
        () {
          expect(
            QrPlusDataCrumb.authentic(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            QrPlusDataCrumb.authentic(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
          );
        },
      );

      test(
        'toBase64 and tryParseBase64 are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseBase64(crumb.toBase64(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'toJson and toJsonString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseJson(crumb.toJsonString()),
            crumb,
          );
        },
      );

      test(
        'toQrString and fromQrString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.fromQrString(crumb.toQrString(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'copyWith returns correct crumb '
        'always',
        () {
          expect(
            (crumb as AuthenticQrPlusDataCrumb).copyWith(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
            QrPlusDataCrumb.authentic(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
          );
        },
      );

      test(
        'maybeIndex returns correct index '
        'always',
        () {
          expect(crumb.maybeIndex, (crumb as AuthenticQrPlusDataCrumb).index);
        },
      );

      test(
        'maybeCrumbs returns correct crumbs '
        'always',
        () {
          expect(crumb.maybeCrumbs, (crumb as AuthenticQrPlusDataCrumb).crumbs);
        },
      );

      test(
        'maybeUid returns correct uid '
        'always',
        () {
          expect(crumb.maybeUid, (crumb as AuthenticQrPlusDataCrumb).uid);
        },
      );

      test(
        'maybeData returns correct data '
        'always',
        () {
          expect(crumb.maybeData, (crumb as AuthenticQrPlusDataCrumb).data);
        },
      );

      test(
        'maybeMode returns correct mode '
        'always',
        () {
          expect(crumb.maybeMode, (crumb as AuthenticQrPlusDataCrumb).mode);
        },
      );

      test(
        'maybeTimestamp returns correct timestamp '
        'always',
        () {
          expect(
            crumb.maybeTimestamp,
            (crumb as AuthenticQrPlusDataCrumb).timestamp,
          );
        },
      );
    });

    group('noNetwork', () {
      late QrPlusDataCrumb crumb;

      setUp(() {
        crumb = QrPlusDataCrumb.noNetwork(
          uid: 'uid',
          data: 'data',
          mode: const QrPlusMode.snowden(),
          timestamp: DateTime(2021),
          index: 1,
          crumbs: 2,
        );
      });

      test(
        'is NoNetworkQrPlusDataCrumb '
        'always',
        () {
          expect(crumb, isA<NoNetworkQrPlusDataCrumb>());
        },
      );

      test(
        'uses value equality '
        'always',
        () {
          expect(
            QrPlusDataCrumb.noNetwork(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            QrPlusDataCrumb.noNetwork(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
          );
        },
      );

      test(
        'toBase64 and tryParseBase64 are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseBase64(crumb.toBase64(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'toJson and toJsonString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseJson(crumb.toJsonString()),
            crumb,
          );
        },
      );

      test(
        'toQrString and fromQrString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.fromQrString(crumb.toQrString(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'copyWith returns correct crumb '
        'always',
        () {
          expect(
            (crumb as NoNetworkQrPlusDataCrumb).copyWith(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
            QrPlusDataCrumb.noNetwork(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
          );
        },
      );

      test(
        'maybeIndex returns correct index '
        'always',
        () {
          expect(crumb.maybeIndex, (crumb as NoNetworkQrPlusDataCrumb).index);
        },
      );

      test(
        'maybeCrumbs returns correct crumbs '
        'always',
        () {
          expect(crumb.maybeCrumbs, (crumb as NoNetworkQrPlusDataCrumb).crumbs);
        },
      );

      test(
        'maybeUid returns correct uid '
        'always',
        () {
          expect(crumb.maybeUid, (crumb as NoNetworkQrPlusDataCrumb).uid);
        },
      );

      test(
        'maybeData returns correct data '
        'always',
        () {
          expect(crumb.maybeData, (crumb as NoNetworkQrPlusDataCrumb).data);
        },
      );

      test(
        'maybeMode returns correct mode '
        'always',
        () {
          expect(crumb.maybeMode, (crumb as NoNetworkQrPlusDataCrumb).mode);
        },
      );

      test(
        'maybeTimestamp returns correct timestamp '
        'always',
        () {
          expect(
            crumb.maybeTimestamp,
            (crumb as NoNetworkQrPlusDataCrumb).timestamp,
          );
        },
      );
    });

    group('screenRecording', () {
      late QrPlusDataCrumb crumb;

      setUp(() {
        crumb = QrPlusDataCrumb.screenRecording(
          uid: 'uid',
          data: 'data',
          mode: const QrPlusMode.snowden(),
          timestamp: DateTime(2021),
          index: 1,
          crumbs: 2,
        );
      });

      test(
        'is ScreenRecordingQrPlusDataCrumb '
        'always',
        () {
          expect(crumb, isA<ScreenRecordingQrPlusDataCrumb>());
        },
      );

      test(
        'uses value equality '
        'always',
        () {
          expect(
            QrPlusDataCrumb.screenRecording(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
            QrPlusDataCrumb.screenRecording(
              uid: 'uid',
              data: 'data',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(2021),
              index: 1,
              crumbs: 2,
            ),
          );
        },
      );

      test(
        'toBase64 and tryParseBase64 are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseBase64(crumb.toBase64(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'toJson and toJsonString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.tryParseJson(crumb.toJsonString()),
            crumb,
          );
        },
      );

      test(
        'toQrString and fromQrString are inverse functions '
        'always',
        () {
          expect(
            QrPlusDataCrumb.fromQrString(crumb.toQrString(), crumb.maybeMode!),
            crumb,
          );
        },
      );

      test(
        'copyWith returns correct crumb '
        'always',
        () {
          expect(
            (crumb as ScreenRecordingQrPlusDataCrumb).copyWith(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
            QrPlusDataCrumb.screenRecording(
              uid: 'newid',
              data: 'newdata',
              mode: const QrPlusMode.plain(),
              timestamp: DateTime(1990),
              index: 2,
              crumbs: 3,
            ),
          );
        },
      );

      test(
        'maybeIndex returns correct index '
        'always',
        () {
          expect(
            crumb.maybeIndex,
            (crumb as ScreenRecordingQrPlusDataCrumb).index,
          );
        },
      );

      test(
        'maybeCrumbs returns correct crumbs '
        'always',
        () {
          expect(
            crumb.maybeCrumbs,
            (crumb as ScreenRecordingQrPlusDataCrumb).crumbs,
          );
        },
      );

      test(
        'maybeUid returns correct uid '
        'always',
        () {
          expect(crumb.maybeUid, (crumb as ScreenRecordingQrPlusDataCrumb).uid);
        },
      );

      test(
        'maybeData returns correct data '
        'always',
        () {
          expect(
            crumb.maybeData,
            (crumb as ScreenRecordingQrPlusDataCrumb).data,
          );
        },
      );

      test(
        'maybeMode returns correct mode '
        'always',
        () {
          expect(
            crumb.maybeMode,
            (crumb as ScreenRecordingQrPlusDataCrumb).mode,
          );
        },
      );

      test(
        'maybeTimestamp returns correct timestamp '
        'always',
        () {
          expect(
            crumb.maybeTimestamp,
            (crumb as ScreenRecordingQrPlusDataCrumb).timestamp,
          );
        },
      );
    });
  });
}
