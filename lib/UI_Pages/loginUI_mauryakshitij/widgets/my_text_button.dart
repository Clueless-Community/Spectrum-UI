import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onTap,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);
  final String buttonName;
  final void Function() onTap;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black12,
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonName,
          style: GoogleFonts.poppins(
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
