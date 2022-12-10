import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.inputType,
    required this.controller,
    this.errorText,
  }) : super(key: key);
  final String labelText;
  final TextEditingController controller;
  final String hintText;
  final TextInputType inputType;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery
        .of(context)
        .platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 15,
        ),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor:
          isDarkMode ? const Color(0xFF5F5F61) : const Color(0xFFD0D0D6),
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
              color: isDarkMode ? const Color(0xffF0EEEE): Colors.black,  fontSize: 16,
              fontWeight: FontWeight.w500),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          errorText: errorText == "" ? null : errorText,
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 12,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isDarkMode ? const Color(0xffF0EEEE) : Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isDarkMode ? const Color(0xffF0EEEE) : Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isDarkMode ? const Color(0xffF0EEEE) : Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
