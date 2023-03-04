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

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: light)
            .copyWith(secondary: darkBluishColor),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.white,
          brightness: Brightness.dark,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context)
              .textTheme
              .copyWith(
                  titleLarge: context.textTheme.titleLarge
                      ?.copyWith(color: Colors.white))
              .bodyMedium,
          titleTextStyle: Theme.of(context)
              .textTheme
              .copyWith(
                  titleLarge: context.textTheme.titleLarge
                      ?.copyWith(color: Colors.white))
              .titleLarge,
        ),
      );

//colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = const Color.fromARGB(255, 36, 41, 51);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
