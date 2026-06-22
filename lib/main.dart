import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // build method is called when the widget is inserted into the widget tree. It describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme is a property of MaterialApp that defines the colors and fonts to use for the app. It is used to customize the look and feel of the app.
      theme: ThemeData(
        // primaryColor: Colors.grey,
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
      // routes is a property of MaterialApp that defines the routes for the app. It is a map that maps route names to the widget that should be displayed for that route. When the user navigates to a route, the corresponding widget is displayed.
      routes: {
        // The "/" route is the default route that is displayed when the app is launched. It is defined as a key in the routes map, and its value is a function that returns the widget to be displayed for that route. In this case, it returns an instance of HomePage.
        // But as we have already defined the home property of MaterialApp to HomePage, we don't need to define the "/" route in the routes map. The home property takes precedence over the routes map for the default route. If we define both the home property and the "/" route in the routes map, the home property will be used for the default route, and the "/" route in the routes map will be ignored. Therefore, it is not necessary to define the "/" route in the routes map if we have already defined the home property.
        // "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
