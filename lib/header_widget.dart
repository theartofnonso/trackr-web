import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'logo_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  /// Launch the Stripe onboarding URL
  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse("https://yt73ad93a36.typeform.com/to/bs9oZKqt");
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  _launchMailto() async {
    final mailtoLink =
        Mailto(to: ['hello@usetracker.xyz'], subject: 'Hello Tracker team');
    final Uri uri = Uri.parse('$mailtoLink');
    await launchUrl(uri);
  }

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
                    text: 'Improve or cut down',
                    style: TextStyle(color: Colors.white)),
                TextSpan(text: ' '),
                TextSpan(text: 'time wasted on certain activities'),
              ])),
          const SizedBox(height: 30),
          RichText(
              text: TextSpan(
                  style: GoogleFonts.pathwayExtreme(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                  children: <TextSpan>[
                const TextSpan(
                    text:
                        "If you have ever tracked an activity or currently track any,"),
                const TextSpan(text: " "),
                TextSpan(
                    text: "come on board",
                    style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchUrl();
                      }),
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
                  children: <TextSpan>[
                const TextSpan(text: "Email us at"),
                const TextSpan(text: " "),
                TextSpan(
                    text: "hello@usetracker.xyz",
                    style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchMailto();
                      }),
              ])),
        ],
      ),
    );
  }
}
