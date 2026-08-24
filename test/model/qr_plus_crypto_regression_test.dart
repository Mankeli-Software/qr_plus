// Regression tests for snowden-mode encryption.
//
// These exist because of a silent, total breakage: encrypt 5.0.3 changed
// IV.fromLength(16) from returning all zeros to returning RANDOM bytes. Since
// the renderer and the reader each build their own IV, every QR produced became
// undecryptable ("Invalid or corrupted pad block"), and because the failure was
// swallowed by a catch in tryParseBase64 the reader simply did nothing at all.
//
// The golden test below is the important one: it pins the exact wire format, so
// ANY change in crypto behaviour (package upgrade, IV, mode, padding) fails here
// instead of silently shipping QR codes that no device can read.

import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/model/model.dart';

void main() {
  group('snowden mode crypto', () {
    const encryptionKey = 'abcdefghijklmnopqrstuvwx'; // 24 bytes / AES-192
    const mode = QrPlusMode.snowden(
      encryptionKey: encryptionKey,
      ttl: Duration(minutes: 5),
      crumbs: 2,
    );

    QrPlusDataCrumb buildCrumb() => QrPlusDataCrumb.authentic(
          uid: '11111111-2222-3333-4444-555555555555',
          data: '{"id":"16","na',
          mode: mode,
          timestamp: DateTime.utc(2026, 1, 2, 3, 4, 5),
          index: 0,
          crumbs: 2,
        );

    // Produced by a known-good implementation (encrypt 5.0.1, and 5.0.3 with
    // IV.allZerosOfLength). Both render byte-identical output, so an app on the
    // older release can still read codes from a newer one. If this test fails,
    // the wire format has changed and older clients WILL break.
    const golden =
        'gGg5rNbtIlMGT/AXNYPg73ytUXZYArBomNW39yUlRbH/ZZjcvEJMk57uFgh29oFmZHRmC6kv'
        'WJs/i+uGrVS4wJUssyQE0+WGN4pxC3Bd1+0yP1jKU3X+CTfg9EtYJT5sIcczio1zOzf1cNz0'
        'KcR5BxEThJ/nptU9hLQfUV11rb3CLhjfo+I15zTLAQabk5u4czkh18tSVQ8Cz/cPX0HkX0io'
        '+d+SNLt3O4yzG88BzYiXuCBE2Xhuscv0zHnrHvErULkT6D0IcXacRE4BwiUnybeEu7rifIFT'
        'ZLW+m3kk3AU=';

    test(
      'produces the pinned wire format '
      'so older clients can still decrypt new codes',
      () {
        expect(buildCrumb().toQrString(), golden);
      },
    );

    test(
      'decrypts the pinned wire format '
      'so new clients can still read codes from older releases',
      () {
        final parsed = QrPlusDataCrumb.fromQrString(golden, mode);

        expect(parsed, isA<AuthenticQrPlusDataCrumb>());
        expect(parsed.maybeUid, '11111111-2222-3333-4444-555555555555');
        expect(parsed.maybeData, '{"id":"16","na');
        expect(parsed.maybeIndex, 0);
        expect(parsed.maybeCrumbs, 2);
      },
    );

    test(
      'round trips '
      'when encrypting and decrypting with the same key',
      () {
        final parsed = QrPlusDataCrumb.fromQrString(
          buildCrumb().toQrString(),
          mode,
        );

        expect(parsed.maybeUid, buildCrumb().maybeUid);
        expect(parsed.maybeData, buildCrumb().maybeData);
      },
    );

    test(
      'is deterministic '
      'so the rendered QR does not change between frames',
      () {
        // A random IV would make every render a different image, which is what
        // encrypt 5.0.3 silently introduced.
        final outputs = List.generate(5, (_) => buildCrumb().toQrString());

        expect(outputs.toSet(), hasLength(1));
      },
    );

    test(
      'returns unknown '
      'when decrypting with a different key',
      () {
        final parsed = QrPlusDataCrumb.fromQrString(
          golden,
          const QrPlusMode.snowden(
            encryptionKey: 'XXXXXXXXXXXXXXXXXXXXXXXX',
            ttl: Duration(minutes: 5),
            crumbs: 2,
          ),
        );

        expect(parsed, isA<UnknownQrPlusDataCrumb>());
      },
    );
  });
}
