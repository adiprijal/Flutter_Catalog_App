import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      // appBar: AppBar(
      //   title: Center(child: Text("Catalog App")),
      // ),
      // body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/home-screen.png", width: 300, height: 300),
            // SizedBox is a widget that takes up space in the layout. It can be used to create space between widgets. In this case, it is used to create space between the image and the text.
            SizedBox(height: 20),
            Text("Catalog", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
          ],
        ),
      // ),
      // drawer: Drawer(),
    );
  }
}