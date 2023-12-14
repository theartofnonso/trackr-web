import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  Future<void> _launchInstagramUrl() async {
    final Uri uri = Uri.parse("https://instagram.com/usetrackr");
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> _launchAppStoreUrl() async {
    final Uri uri = Uri.parse("https://apps.apple.com/app/6474073502");
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  _launchMailto() async {
    final mailtoLink = Mailto(to: ['hello@usetracker.xyz'], subject: 'Hello Trackr team');
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
          Image.asset(
            'images/trackr.png',
            fit: BoxFit.contain,
            height: 14, // Adjust the height as needed
          ),
          const SizedBox(
            height: 10,
          ),
          Text("IMPROVE PERFORMANCE",
              style: GoogleFonts.pathwayExtreme(fontWeight: FontWeight.w700, fontSize: 24, color: Colors.white)),
          const SizedBox(
            height: 5,
          ),
          Text.rich(TextSpan(
              style: GoogleFonts.pathwayExtreme(fontWeight: FontWeight.w500, color: Colors.white70, fontSize: 16),
              children: const <TextSpan>[
                TextSpan(text: 'Create, log and track', style: TextStyle(color: Colors.white)),
                TextSpan(text: ' '),
                TextSpan(text: 'your training'),
              ])),
          const SizedBox(height: 16),
          Text.rich(TextSpan(
              style: GoogleFonts.pathwayExtreme(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white70),
              children: <TextSpan>[
                const TextSpan(text: "Talk to us"),
                const TextSpan(text: " "),
                TextSpan(
                    text: "hello@usetracker.xyz",
                    style: const TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _launchMailto();
                      }),
              ])),
          const SizedBox(height: 16),
          Row(children: [
            GestureDetector(onTap: _launchInstagramUrl, child: const FaIcon(FontAwesomeIcons.squareInstagram)),
            const SizedBox(width: 10),
            GestureDetector(onTap: _launchAppStoreUrl, child: const FaIcon(FontAwesomeIcons.appStoreIos))
          ]),
        ],
      ),
    );
  }
}
