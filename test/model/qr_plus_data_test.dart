import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/utility/utility.dart';

void main() {
  group('QrPlusData', () {
    test(
      'uses value equality '
      'always',
      () {
        expect(
          const QrPlusData(uid: 'uid'),
          const QrPlusData(uid: 'uid'),
        );
      },
    );

    test(
      'QrPlusData.unknown() is UnknownQrPlusData '
      'always',
      () {
        expect(
          const QrPlusData.unknown(),
          isA<UnknownQrPlusData>(),
        );
      },
    );

    group('fromData', () {
      test(
        'returns QrPlusData with AuthenticQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.authentic',
        () {
          expect(
            QrPlusData.fromData(
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime.now(),
              authenticity: QrPlusAuthenticity.authentic,
            ).maybeCrumbs!.first,
            isA<AuthenticQrPlusDataCrumb>(),
          );
        },
      );

      test(
        'returns QrPlusData with NoNetworkQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.noNetwork',
        () {
          expect(
            QrPlusData.fromData(
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime.now(),
              authenticity: QrPlusAuthenticity.noNetwork,
            ).maybeCrumbs!.first,
            isA<NoNetworkQrPlusDataCrumb>(),
          );
        },
      );

      test(
        'returns QrPlusData with ScreenRecordingQrPlusDataCrumb '
        'when authenticity is QrPlusAuthenticity.screenRecording',
        () {
          expect(
            QrPlusData.fromData(
              data: 'data',
              mode: const QrPlusMode.snowden(),
              timestamp: DateTime.now(),
              authenticity: QrPlusAuthenticity.screenRecording,
            ).maybeCrumbs!.first,
            isA<ScreenRecordingQrPlusDataCrumb>(),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'is false '
        'when isWhole is false',
        () {
          expect(
            QrPlusData(
              uid: 'uid',
              crumbs: [
                QrPlusDataCrumb.authentic(
                  uid: 'uid',
                  data: 'data',
                  mode: const QrPlusMode.snowden(),
                  timestamp: DateTime.now(),
                  index: 0,
                  crumbs: 5,
                ),
              ],
            ).isTypeValid(
              requiredMode: const QrPlusMode.snowden(),
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
            QrPlusData(
              uid: 'uid',
              crumbs: [
                QrPlusDataCrumb.authentic(
                  uid: 'uid',
                  data: 'data',
                  mode: const QrPlusMode.snowden(ttl: Duration(seconds: 15)),
                  timestamp: DateTime.now(),
                  index: 0,
                  crumbs: 5,
                ),
              ],
            ).isTypeValid(
              requiredMode: const QrPlusMode.snowden(),
            ),
            isFalse,
          );
        },
      );
    });

    group('isWhole', () {
      test(
        'is true '
        'when QrPlusData is whole',
        () {
          expect(
            QrPlusData(
              uid: 'uid',
              crumbs: [
                QrPlusDataCrumb.authentic(
                  uid: 'uid',
                  data: 'data',
                  mode: const QrPlusMode.snowden(),
                  timestamp: DateTime(2020),
                  index: 0,
                  crumbs: 1,
                ),
              ],
            ).isWhole,
            isTrue,
          );
        },
      );

      test(
        'is false '
        'when QrPlusData is not whole',
        () {
          expect(
            QrPlusData(
              uid: 'uid',
              crumbs: [
                QrPlusDataCrumb.authentic(
                  uid: 'uid',
                  data: 'data',
                  mode: const QrPlusMode.snowden(),
                  timestamp: DateTime(2020),
                  index: 0,
                  crumbs: 5,
                ),
              ],
            ).isWhole,
            isFalse,
          );
        },
      );
      test(
          'is false '
          'when QrPlusData is UnknownQrPlusData', () {
        expect(
          const QrPlusData.unknown().isWhole,
          isFalse,
        );
      });
    });

    group('maybeCrumbs', () {
      test(
          'maybeCrumbs is not null '
          'when QrPlusData is not UnknownQrPlusData', () {
        expect(
          const QrPlusData(uid: 'uid').maybeCrumbs,
          isNotNull,
        );
      });

      test(
          'maybeCrumbs is null '
          'when QrPlusData is UnknownQrPlusData', () {
        expect(
          const QrPlusData.unknown().maybeCrumbs,
          isNull,
        );
      });
    });

    group('maybeUid', () {
      test(
          'maybeUid is not null '
          'when QrPlusData is not UnknownQrPlusData', () {
        expect(
          const QrPlusData(uid: 'uid').maybeUid,
          isNotNull,
        );
      });

      test(
          'maybeUid is null '
          'when QrPlusData is UnknownQrPlusData', () {
        expect(
          const QrPlusData.unknown().maybeUid,
          isNull,
        );
      });
    });
  });
}
