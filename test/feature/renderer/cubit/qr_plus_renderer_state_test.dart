import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/qr_plus.dart';
import 'package:qr_plus/src/feature/renderer/cubit/cubit.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/utility/utility.dart';

void main() {
  group('QrPlusRendererState', () {
    test(
      'supports value equality '
      'always',
      () {
        expect(
          const QrPlusRendererState(
            mode: QrPlusMode.plain(),
            plainData: 'abc',
          ),
          const QrPlusRendererState(
            mode: QrPlusMode.plain(),
            plainData: 'abc',
          ),
        );
      },
    );

    test(
      'copyWith returns correct object '
      'always',
      () {
        expect(
          const QrPlusRendererState(
            mode: QrPlusMode.plain(),
            plainData: 'abc',
          ).copyWith(
            mode: const QrPlusMode.snowden(),
            plainData: '123',
            data: const QrPlusData(
              uid: 'asdfasdf',
            ),
            crumbledDataIndex: 4,
            connectivity: [ConnectivityResult.bluetooth],
            screenRecorderStatus: ScreenRecorderStatus.recorderOn,
            authenticity: QrPlusAuthenticity.screenRecording,
          ),
          const QrPlusRendererState(
            mode: QrPlusMode.snowden(),
            plainData: '123',
            data: QrPlusData(
              uid: 'asdfasdf',
            ),
            crumbledDataIndex: 4,
            connectivity: [ConnectivityResult.bluetooth],
            screenRecorderStatus: ScreenRecorderStatus.recorderOn,
            authenticity: QrPlusAuthenticity.screenRecording,
          ),
        );
      },
    );
  });
}
