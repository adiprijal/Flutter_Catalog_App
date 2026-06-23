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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ),
                  ),
                  TextFormField(
                    // obscureText is a property of the TextFormField widget that is used to hide the text entered by the user. It is commonly used for password fields. When obscureText is set to true, the text entered by the user will be replaced with dots or asterisks, making it difficult for others to see what is being typed.
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
                  // ElevatedButton is a Material Design button that reacts to touches by filling with color. It is a replacement for RaisedButton.
                  // The ElevatedButton widget is used to create a button that can be pressed by the user. It has a child widget, which is usually a Text widget, and an onPressed callback that is called when the button is pressed.
                  ElevatedButton(
                    style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: Text("Login"),
                    onPressed: () {
                      print("Login button pressed");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
