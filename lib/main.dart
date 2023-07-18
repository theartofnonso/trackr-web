import 'package:flutter/material.dart';
import 'package:tracker/landing_page.dart';
import 'package:url_strategy/url_strategy.dart' as url_strategy;

void main() {
  url_strategy.setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
