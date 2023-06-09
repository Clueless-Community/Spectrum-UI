import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.white,
          brightness: Brightness.light,
        ),
     snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.black,
            contentTextStyle: TextStyle(color: Colors.white)),
        textTheme:TextTheme(
            displayLarge: GoogleFonts.poppins(
          color: MyTheme.lightBluishColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        )),
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
     snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.white,
            contentTextStyle: TextStyle(color: Colors.black)),
       textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

//colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkcreamColor = const Color.fromARGB(255, 36, 41, 51);
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = const Color(0xFF3F51B5);
}
