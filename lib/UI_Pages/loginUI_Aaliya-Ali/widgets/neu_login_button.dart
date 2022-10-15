import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class NeuLoginButton extends StatelessWidget {
  const NeuLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.zero,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        shadowLightColor: Colors.white,
        shadowLightColorEmboss: Colors.white,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(14)),
        depth: 5,
        lightSource: LightSource.topLeft,
        color: const Color(0xfff2f1f7),
        surfaceIntensity: 200,
        intensity: 200,
      ),
      onPressed: () {
        debugPrint('Pressed');
      },
      child: Container(
        height: 50,
        width: 400,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff00CAE1), Color(0xff24ACFA)])),
        child: Center(
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
