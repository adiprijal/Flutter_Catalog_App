import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Colors.grey,
        primarySwatch: Colors.deepPurple,
        // fontFamily is a property of ThemeData that defines the default font family for the app. It is used to set the font family for all the text in the app. The font family is specified as a string argument to the fontFamily property of the ThemeData constructor. We can use GoogleFonts to set the font family for the app. GoogleFonts is a package that provides a collection of fonts that can be used in Flutter apps. We can use GoogleFonts to set the font family for the app by specifying the name of the font as a string argument to the GoogleFonts constructor. For example, if we want to use the Lato font for our app, we can set the fontFamily property of ThemeData to GoogleFonts.lato().fontFamily.
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
