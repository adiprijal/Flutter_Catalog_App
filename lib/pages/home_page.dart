import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      drawer: MyDrawer(),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              "assets/images/home-screen.png",
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              "Catalog",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
