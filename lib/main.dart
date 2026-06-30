import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/login_page.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catalog App",
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/":(context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
