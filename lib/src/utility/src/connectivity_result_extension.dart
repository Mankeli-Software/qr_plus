import 'package:connectivity_plus/connectivity_plus.dart';

extension ConnectivityResultExtension on ConnectivityResult {
  bool get hasNetworkConnection => this != ConnectivityResult.none;
}
