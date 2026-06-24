import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/login_page.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
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
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
