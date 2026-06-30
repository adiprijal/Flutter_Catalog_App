import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    // primaryColor: Colors.grey,
    primarySwatch: Colors.deepPurple,
    primaryColor: Colors.black87,
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.light(
        primary: primaryButtonColor,
        secondary: Colors.black
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
  );


  // Dark Theme
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.black45,
    canvasColor: darkGreyColor,
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.dark(
        primary: lightBluishColor,
        secondary: Colors.white,
      ),
    ),
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
  );


  // Colors
  static Color primaryButtonColor = Color(0xFFF3EDF7);
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkGreyColor = Color(0xff2c2c2c);
  static Color lightBluishColor = Color.fromARGB(255, 145, 130, 217);
  static Color darkBluishColor = Color.fromARGB(255, 9, 28, 137);
  static Color lightColor = Color.fromARGB(255, 255, 255, 255);
  static Color darkColor = Color.fromARGB(255, 0, 0, 0);
}
