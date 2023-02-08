import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/src/utility/utility.dart';

void main() {
  group('ConnectivityResultExtension', () {
    test(
      'returns false '
      'when result is ConnectivityResult.none',
      () {
        expect(ConnectivityResult.none.hasNetworkConnection, false);
      },
    );

    test(
      'returns true '
      'when result is ConnectivityResult.mobile',
      () {
        expect(ConnectivityResult.mobile.hasNetworkConnection, true);
      },
    );

    test(
      'returns true '
      'when result is ConnectivityResult.wifi',
      () {
        expect(ConnectivityResult.wifi.hasNetworkConnection, true);
      },
    );

    test(
      'returns true '
      'when result is ConnectivityResult.ethernet',
      () {
        expect(ConnectivityResult.ethernet.hasNetworkConnection, true);
      },
    );

    test(
      'returns true '
      'when result is ConnectivityResult.bluetooth',
      () {
        expect(ConnectivityResult.bluetooth.hasNetworkConnection, true);
      },
    );

    test(
      'returns true '
      'when result is ConnectivityResult.vpn',
      () {
        expect(ConnectivityResult.vpn.hasNetworkConnection, true);
      },
    );
  });
}
