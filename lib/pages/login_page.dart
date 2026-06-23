import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // appBar: AppBar(
      //   title: Center(child: Text("Login Page")),
      // ),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/enter-password.png", height: 200),
            Text("Login"),
            SizedBox(height: 20),
            // Padding is used to add space around the child widget. It takes a padding value and applies it to the child widget. In this case, we are using EdgeInsets.all(8.0) to add 8 pixels of padding on all sides of the child widget.
            // Some of the common properties of Padding widget are:
            // padding: This property takes an EdgeInsets value that defines the amount of padding to apply. It can be set using EdgeInsets.all(), EdgeInsets.symmetric(), EdgeInsets.only(), etc.
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    )
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}