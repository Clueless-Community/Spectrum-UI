import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class NeuTextField extends StatelessWidget {
  const NeuTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.obsecureText});
  final String hintText;
  final IconData icon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      drawSurfaceAboveChild: false,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(14)),
          depth: -4,
          lightSource: LightSource.topLeft,
          color: const Color(0xfff2f1f7),
          surfaceIntensity: 100,
          intensity: 100),
      child: TextField(
        style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),
        obscureText: obsecureText,
        decoration: loginFieldDecoration.copyWith(
          hintText: hintText,
          prefixIcon: Icon(icon),
          hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

InputDecoration loginFieldDecoration = const InputDecoration(
  focusColor: Colors.transparent,
  enabledBorder: InputBorder.none,
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
);
