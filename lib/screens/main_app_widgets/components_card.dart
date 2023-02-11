import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentsCard extends StatelessWidget {
  final String text;
  const ComponentsCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(55, 80, 206, 1),
          borderRadius: BorderRadius.circular(19)),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily:
                  GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily),
        ),
      ),
    );
  }
}
