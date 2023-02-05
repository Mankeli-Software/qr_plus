/// {@template string_extension}
/// Extension methods on [String] to make it easier to work with.
/// {@endtemplate}
extension StringExtension on String {
  /// {@macro string_extension}
  ///
  /// [reversed] returns a reversed version of the original string.
  String get reversed => split('').reversed.join();

  /// {@macro string_extension}
  ///
  /// [slice] divides the string into [n] parts of equal length. If
  /// the length of the string is not divisible by [n], the last part
  /// will be longer than the others.
  List<String> slice(int n) {
    final parts = n.clamp(1, length);

    final partLength = (length / parts).floor();
    final excessLength = length % parts;

    return List.generate(parts, (i) {
      final startIndex = i * partLength;
      var endIndex = startIndex + partLength;
      if (i == parts - 1) {
        endIndex += excessLength;
      }

      return substring(startIndex, endIndex);
    });
  }
}
