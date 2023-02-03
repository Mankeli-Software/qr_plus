/// {@template string_extension}
/// Extension methods on [String] to make it easier to work with.
/// {@endtemplate}
extension StringExtension on String {
  /// {@macro string_extension}
  ///
  /// [reversed] returns a reversed version of the original string.
  String get reversed => split('').reversed.join();
}
