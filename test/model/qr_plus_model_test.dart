import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/model/model.dart';

void main() {
  group('QrPlusMode', () {
    group('plain', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.plain();
      });

      test(
        'maybeCrumbs is not defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNull,
          );
        },
      );

      test(
        'maybeTTL is not defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is not defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is not defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNull,
          );
        },
      );
    });
    group('safe', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.safe();
      });

      test(
        'maybeCrumbs is defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNotNull,
          );
        },
      );

      test(
        'maybeTTL is not defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is not defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is not defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNull,
          );
        },
      );
    });
    group('robust', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.robust();
      });

      test(
        'maybeCrumbs is defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNotNull,
          );
        },
      );

      test(
        'maybeTTL is defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNotNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is not defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is not defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNull,
          );
        },
      );
    });
    group('sound', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.sound();
      });

      test(
        'maybeCrumbs is defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNotNull,
          );
        },
      );

      test(
        'maybeTTL is defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNotNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNotNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is not defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNull,
          );
        },
      );

      test(
        'ntpFetchInterval is not included in json '
        'always',
        () {
          expect(
            mode.toJson().containsKey('ntpFetchInterval'),
            isFalse,
          );
        },
      );
    });
    group('paranoid', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.paranoid();
      });

      test(
        'maybeCrumbs is defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNotNull,
          );
        },
      );

      test(
        'maybeTTL is defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNotNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNotNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is not defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNull,
          );
        },
      );

      test(
        'ntpFetchInterval is not included in json '
        'always',
        () {
          expect(
            mode.toJson().containsKey('ntpFetchInterval'),
            isFalse,
          );
        },
      );
    });
    group('snowden', () {
      late QrPlusMode mode;

      setUp(() {
        mode = const QrPlusMode.snowden();
      });

      test(
        'maybeCrumbs is defined '
        'always',
        () {
          expect(
            mode.maybeCrumbs,
            isNotNull,
          );
        },
      );

      test(
        'maybeTTL is defined '
        'always',
        () {
          expect(
            mode.maybeTTL,
            isNotNull,
          );
        },
      );

      test(
        'maybeNTPFetchInterval is defined '
        'always',
        () {
          expect(
            mode.maybeNTPFetchInterval,
            isNotNull,
          );
        },
      );

      test(
        'maybeEncryptionKey is defined '
        'always',
        () {
          expect(
            mode.maybeEncryptionKey,
            isNotNull,
          );
        },
      );

      test(
        'ntpFetchInterval is not included in json '
        'always',
        () {
          expect(
            mode.toJson().containsKey('ntpFetchInterval'),
            isFalse,
          );
        },
      );

      test(
        'encryptionKey is not included in json '
        'always',
        () {
          expect(
            mode.toJson().containsKey('encryptionKey'),
            isFalse,
          );
        },
      );
    });
  });
}
