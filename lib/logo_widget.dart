import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tracker",
            style: GoogleFonts.pathwayExtreme(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white)),
        Row(
          children: [
            Container(
              width: 30,
              height: 10,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 10,
              height: 10,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 10,
              height: 10,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 10,
              height: 10,
              color: Colors.white,
            )
          ],
        ),
      ],
    );
  }
}
