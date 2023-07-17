import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logo_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LogoWidget(),
          const SizedBox(
            height: 10,
          ),
          Text("JUST TRACK AN ACTIVITY",
              style: GoogleFonts.pathwayExtreme(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white)),
          const SizedBox(
            height: 5,
          ),
          RichText(
              text: TextSpan(
                  style: GoogleFonts.pathwayExtreme(
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                      fontSize: 16),
                  children: const <TextSpan>[
                    TextSpan(
                        text: "KISS: Keep it simple stupid,"),
                    TextSpan(text: " "),
                    TextSpan(
                        text:
                        'track the duration of any activity'),
                    TextSpan(text: " "),
                    TextSpan(
                        text: 'and understand your behaviour',
                        style: TextStyle(color: Colors.white)),
                  ])),
          const SizedBox(height: 30),
          RichText(
              text: TextSpan(
                  style: GoogleFonts.pathwayExtreme(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                  children: const <TextSpan>[
                    TextSpan(
                        text:
                        "If you have ever tracked an activity or currently track any,"),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "come on board",
                        style: TextStyle(color: Colors.white)),
                  ])),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
                  style: GoogleFonts.pathwayExtreme(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white70),
                  children: const <TextSpan>[
                    TextSpan(text: "Email us at"),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "hello@usetracker.xyz",
                        style: TextStyle(
                            color: Colors.white)),
                  ])),
        ],
      ),
    );
  }
}
