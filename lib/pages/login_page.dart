import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/enter-password.png", height: 200),
            SizedBox(height: 20),
            Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
                  // ElevatedButton(
                  //   style: ButtonStyle(
                  //     textStyle: WidgetStateProperty.all(
                  //       TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  //     ),
                  //     minimumSize: WidgetStateProperty.all(Size(120, 40)),
                  //     foregroundColor: WidgetStateProperty.all(Colors.white),
                  //     backgroundColor: WidgetStateProperty.all(Colors.blue),
                  //   ),
                  //   child: Text("Login"),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // ),

                  // To make a container clickable, we can use InkWell or GestureDetector. Here, we will use InkWell.
                  // InkWell is a material design ripple effect that responds to touch events. It is commonly used to make widgets clickable.
                  // GestureDetector is a more general-purpose widget that can detect various gestures, such as taps, swipes, and long presses. It does not provide any visual feedback by default.
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all( Radius.circular(24)),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
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
