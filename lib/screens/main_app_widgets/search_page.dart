import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search",
          style: TextStyle(
            color: MyTheme.lightBluishColor,
            fontSize: 24,
            fontFamily: GoogleFonts.dmSans(
              fontWeight: FontWeight.w700,
            ).fontFamily,
          ),
        ),
      ),
    );
  }
}
