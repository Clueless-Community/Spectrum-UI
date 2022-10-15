import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuSocialLoginButton extends StatelessWidget {
  const NeuSocialLoginButton({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          depth: 3,
          lightSource: LightSource.topLeft,
          color: const Color(0xfff2f1f7),
          surfaceIntensity: 100,
          intensity: 100),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Center(
          child: Image.asset(
            type == 'G'
                ? 'assets/loginImages_Aaliya-Ali/google.png'
                : 'assets/loginImages_Aaliya-Ali/facebook.png',
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
