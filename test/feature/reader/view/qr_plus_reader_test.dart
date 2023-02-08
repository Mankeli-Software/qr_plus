import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/qr_plus.dart';

void main() {
  group('QrPlusReader', () {
    testWidgets(
        'renders MobileScanner '
        'always', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: QrPlusReader(
              onData: (_, __) {},
            ),
          ),
        ),
      );

      expect(find.byType(MobileScanner), findsOneWidget);
    });
  });
}
