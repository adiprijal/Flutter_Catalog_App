import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // appBar: AppBar(
      //   title: Center(child: Text("Login Page")),
      // ),
      // SingleChildScrollView is used to make the page scrollable when the elements exceed the screen height, preventing overflow errors. It allows the user to scroll through the content if it doesn't fit on the screen.
      // It takes a single child widget and makes it scrollable, ensuring that all content is accessible even on smaller screens or when the keyboard is open.
      child: SingleChildScrollView(
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
                    obscureText: true,
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
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
