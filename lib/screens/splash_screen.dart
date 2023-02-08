import 'package:flutter/material.dart';
import 'package:flutter_component_ui/screens/components_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(36),
        color: const Color.fromRGBO(54, 64, 183, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage('assets/splash.png')),
            Text(
              'Flutter UI Components',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                  ).fontFamily,
                  fontSize: 45),
            ),
            Text(
              'A Plug and play UI component library',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400)
                      .fontFamily,
                  fontSize: 20),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComponentScreen()));
                },
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
