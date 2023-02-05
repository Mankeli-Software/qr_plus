import 'package:connectivity_plus/connectivity_plus.dart';

/// {@template connectivity_result_extension}
/// An extension on [ConnectivityResult] which makes it easier to check
/// and validate the network connection.
/// {@endtemplate}
extension ConnectivityResultExtension on ConnectivityResult {
  /// {@macro connectivity_result_extension}
  ///
  /// Returns `true` if the [ConnectivityResult] is not [ConnectivityResult.none]
  /// and `false` otherwise.
  bool get hasNetworkConnection => this != ConnectivityResult.none;
}
