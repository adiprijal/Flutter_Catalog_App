// This is the theme file where we can define our light and dark themes for the app.
// We can also define our custom colors and fonts here.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // Light Theme
  // It is a static method that returns a ThemeData object for the light theme.
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
  // It is a static method that returns a ThemeData object for the dark theme.
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );
}
