import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login Page")),
      ),
      // body is a property of Scaffold that defines the main content of the page. It is used to display the widgets that make up the user interface of the page.
      body: Center(
        // Column is a widget that displays its children in a vertical array. It is used to arrange the widgets in a column.
        child: Column(
          children: [
            // Image.asset is a widget that displays an image from the assets directory. It is used to display images in the app. The path to the image is specified as a string argument to the Image.asset constructor.
            // We can also use Image.network to display an image from the internet. The URL of the image is specified as a string argument to the Image.network constructor.
            // To use images in the app, we need to add them to the assets directory and specify the path to the image in the pubspec.yaml file. The pubspec.yaml file is a configuration file that is used to specify the dependencies and assets for the app. We need to add the path to the image in the assets section of the pubspec.yaml file. For example, if we have an image called "enter-password.png" in the assets/images directory, we need to add the following line to the pubspec.yaml file:
            // assets:
            //   - assets/images/enter-password.png
            Image.asset("assets/images/enter-password.png"),
            Text("Login"),
          ],
        ),
      ),
    );
  }
}