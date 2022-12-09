import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPasswordField extends StatelessWidget {
  const MyPasswordField({
    Key? key,
    required this.isPasswordVisible,
    required this.onTap,
    required this.controller,
    this.errorText,
  }) : super(key: key);

  final TextEditingController controller;
  final bool isPasswordVisible;
  final void Function() onTap;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          controller: controller,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 15,
          ),
          obscureText: isPasswordVisible,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            filled: true,
            fillColor:
                isDarkMode ? const Color(0xFF5F5F61) : const Color(0xFFD0D0D6),
            labelText: 'Enter Password',
            labelStyle: GoogleFonts.poppins(
                color: isDarkMode ? const Color(0xffF0EEEE): Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            errorText: errorText == "" ? null : errorText,
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: onTap,
                icon: Icon(
                  isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            contentPadding: EdgeInsets.all(20),
            hintText: 'Enter Password',
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 12,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isDarkMode ? const Color(0xffF0EEEE): Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isDarkMode ? const Color(0xffF0EEEE): Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isDarkMode? const Color(0xffF0EEEE): Colors.black, width: 3),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
        ));
  }
}
