import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "About Page",
          style: TextStyle(
              color: const Color.fromRGBO(55, 80, 206, 1),
              fontSize: 24,
              fontFamily: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
              ).fontFamily),
        ),
      ),
    );
  }
}
