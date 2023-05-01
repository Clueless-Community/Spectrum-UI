import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Favourite",
              style: TextStyle(
                color: MyTheme.lightBluishColor,
                fontSize: 24,
                fontFamily: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                ).fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
