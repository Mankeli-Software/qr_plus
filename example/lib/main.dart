// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:qr_plus/qr_plus.dart';

/// Name of the home route
const kHomeRoute = '/';

/// Name of the renderer route
const kRendererRoute = '/renderer';

/// Name of the reader route
const kReaderRoute = '/reader';

void main() {
  runApp(const MyApp());
}

/// {@template my_app}
/// Starting point of the app
/// {@endtemplate}
class MyApp extends StatelessWidget {
  /// {@macro my_app}
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'qr_plus example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: kHomeRoute,
      routes: {
        kHomeRoute: (context) => const Home(),
        kRendererRoute: (context) => const Renderer(),
        kReaderRoute: (context) => const Reader(),
      },
    );
  }
}

/// {@template home}
/// Home screen of the app
/// {@endtemplate}
class Home extends StatelessWidget {
  /// {@macro home}
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, kRendererRoute);
              },
              child: const Text('Renderer'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, kReaderRoute);
              },
              child: const Text('Reader'),
            ),
          ],
        ),
      ),
    );
  }
}

/// {@template renderer}
/// Renderer screen of the app
/// {@endtemplate}
class Renderer extends StatelessWidget {
  /// {@macro renderer}
  const Renderer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Renderer'),
      ),
      body: Center(
        child: QrPlusRenderer(
          data: 'https://youtu.be/dQw4w9WgXcQ',
          mode: const QrPlusMode.snowden(),
        ),
      ),
    );
  }
}

/// {@template reader}
/// Reader screen of the app
/// {@endtemplate}
class Reader extends StatelessWidget {
  /// {@macro reader}
  const Reader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reader'),
      ),
      body: Center(
        child: QrPlusReader(
          mode: const QrPlusMode.snowden(),
          onData: (data, authenticity) {
            print(authenticity);
            print(data);
          },
        ),
      ),
    );
  }
}
