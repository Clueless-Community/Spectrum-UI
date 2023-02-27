import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static const MaterialColor light = MaterialColor(
    _lightPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );
  static const int _lightPrimaryValue = 0xFFFFFFFF;
  static const MaterialAccentColor lightAccent = MaterialAccentColor(
    _lightAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFFFFFF),
      200: Color(_lightAccentPrimaryValue),
      400: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
    },
  );
  static const int _lightAccentPrimaryValue = 0xFFFFFFFF;

  static ThemeData LightTheme(BuildContext context) => ThemeData(
        primarySwatch: light,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      buttonColor: lightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6?.copyWith(color: Colors.white)),
      ));

//colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Color.fromARGB(255, 36, 41, 51);
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
