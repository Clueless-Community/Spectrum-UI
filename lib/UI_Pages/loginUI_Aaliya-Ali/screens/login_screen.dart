import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/neu_login_button.dart';
import '../widgets/neu_social_login_button.dart';
import '../widgets/neu_text_field.dart';

class SkeuomorphicLoginScreen extends StatelessWidget {
  const SkeuomorphicLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 242, 242, 251),
      body: SafeArea(
        child: Neumorphic(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          style: const NeumorphicStyle(
              depth: 5,
              color: Color(0xfff2f1f7),
              shadowDarkColor: Color(0xffDDDEEC)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NeumorphicIcon(
                Icons.account_circle_rounded,
                size: 200,
                style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  color: Colors.lightBlue.shade300,
                  depth: 5,
                ),
              ),
              Text(
                'Hey There! Welcome',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),
              const NeuTextField(
                hintText: "Username/Email",
                icon: Icons.person_outline,
                obsecureText: false,
              ),
              const SizedBox(height: 40),
              const NeuTextField(
                hintText: "Password",
                icon: Icons.lock_outline,
                obsecureText: true,
              ),
              const SizedBox(height: 50),
              const NeuLoginButton(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  Text('OR',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  Container(
                    height: 1,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuSocialLoginButton(type: 'G'),
                  NeuSocialLoginButton(type: 'f'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
