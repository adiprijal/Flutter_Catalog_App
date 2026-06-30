import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    // primaryColor: Colors.grey,
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.3,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
  );


  // Dark Theme
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );


  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
