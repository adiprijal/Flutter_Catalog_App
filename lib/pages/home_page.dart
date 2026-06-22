import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color is a property of Material that defines the background color of the material. It is used to set the background color of the page.
      color: Colors.white,
      // appBar is a property of Scaffold that defines the app bar for the page. It is used to display the title of the page and provide navigation options for the user.
      // appBar: AppBar(
      //   title: Center(child: Text("Catalog App")),
      // ),
      // body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/home-screen.png"),
            // Text is a widget that displays a string of text with a single style. It is used to display text in the app. The string of text is specified as a string argument to the Text constructor, and the style of the text is specified as a TextStyle argument to the style property of the Text widget.
            Text("Catalog", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          ],
        ),
      // ),
      // drawer: Drawer(),
    );
  }
}