import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracker/landing_page.dart';
import 'package:url_strategy/url_strategy.dart' as url_strategy;

import 'app_constants.dart';

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
      title: "Trackr",
      theme: ThemeData(
        scaffoldBackgroundColor: tealBlueDark,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.black,
          background: tealBlueDark,
          onBackground: Colors.white,
          surface: tealBlueLighter,
          onSurface: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: tealBlueDark,
          surfaceTintColor: tealBlueDark,
        ),
        snackBarTheme: const SnackBarThemeData(backgroundColor: tealBlueDark, actionBackgroundColor: tealBlueLighter),
        tabBarTheme: const TabBarTheme(labelColor: Colors.white, unselectedLabelColor: Colors.white70),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: tealBlueLight)),
          enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(2), borderSide: const BorderSide(color: Colors.black)),
          filled: true,
          fillColor: tealBlueLighter,
          hintStyle: GoogleFonts.lato(color: Colors.grey, fontSize: 14),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(tealBlueLight),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
        ), useMaterial3: true, textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.white.withOpacity(0.2))
      ),
      home: const SelectionArea(child: LandingPage()),
    );
  }
}
