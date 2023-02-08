import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/utility/utility.dart';

void main() {
  group('StringExtension', () {
    group('reversed', () {
      test(
        'returns a reversed version of the original string '
        'when the string is not empty',
        () {
          expect('abc'.reversed, 'cba');
        },
      );

      test(
        'returns an empty string '
        'when the string is empty',
        () {
          expect(''.reversed, '');
        },
      );
    });

    group('slice', () {
      test(
        'returns a list of [n] parts of equal length '
        'when the length of the string is divisible by [n]',
        () {
          expect('abcdef'.slice(3), ['ab', 'cd', 'ef']);
        },
      );

      test(
        'returns a list of [n] parts with last one longer '
        'when the length of the string is not divisible by [n]',
        () {
          expect('abcdefg'.slice(3), ['ab', 'cd', 'efg']);
        },
      );

      test(
        'returns a list of the string characters '
        'when [n] is greater than the string length',
        () {
          expect('abc'.slice(10), ['a', 'b', 'c']);
        },
      );

      test(
        'returns a list containing the original string '
        'when [n] is smaller than 1',
        () {
          expect('abc'.slice(0), ['abc']);
        },
      );
    });
  });
}
