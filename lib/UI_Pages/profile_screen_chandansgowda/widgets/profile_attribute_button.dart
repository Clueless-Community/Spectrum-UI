import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAttributeButton extends StatelessWidget {
  final String title, value;
  const ProfileAttributeButton(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 5),
      onPressed: () {},
      child: Column(
        children: [
          Text(
            value,
            style: GoogleFonts.poppins(fontSize: MediaQuery.of(context).size.width/13),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(fontSize: MediaQuery.of(context).size.width/30),
          )
        ],
      ),
    );
  }
}