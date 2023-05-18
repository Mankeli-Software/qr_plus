import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_plus/qr_plus.dart';

void main() {
  group('QrPlusRenderer', () {
    testWidgets(
        'renders QrImage '
        'always', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: QrPlusRenderer(
              data: 'perkele',
            ),
          ),
        ),
      );

      expect(find.byType(QrImageView), findsOneWidget);
    });
  });
}
