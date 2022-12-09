import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/loginUI_mauryakshitij/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    if(!mounted) return;
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const AppLoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final width = MediaQuery.of(context).size.width;
    return Theme(
        data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: isDarkMode ? Colors.black : Colors.white,
            body: Center(
              child: Row(
                children: [
                  const Spacer(),
                  Image(
                      image: isDarkMode
                          ? const AssetImage(
                              "assets/clueless_logo/logo_dark.png")
                          : const AssetImage(
                              'assets/clueless_logo/logo_light.png'),
                      width: width / 3),
                  Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        "Clueless",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? Colors.white
                                : const Color(0xFF213B7E)),
                      ),
                      Text(
                        "Community",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer()
                    ],
                  )),
                  const Spacer()
                ],
              ),
            ),
          ),
        ));
  }
}
