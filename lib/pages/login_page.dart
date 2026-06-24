import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

// StatefulWidget vs StatelessWidget
// StatelessWidget: A widget that does not require mutable state. It is immutable and can be built once and reused multiple times. It is suitable for widgets that do not change over time, such as static text or images.
// Example: Text, Image, Icon, etc.
// Example use case: A login page that displays a static image and text, where the content does not change based on user interactions or other events.

// StatefulWidget: A widget that requires mutable state. It can be rebuilt multiple times and can change over time. It is suitable for widgets that need to update their appearance or behavior based on user interactions or other events.
// Example: Checkbox, TextField, Slider, etc.
// Example use case: A shopping cart page that needs to update the total price and item count based on user interactions, such as adding or removing items from the cart.

// In a single page, you can use both StatelessWidget and StatefulWidget depending on the requirements of the specific widgets you are implementing. For example, you might have a login page that is a StatelessWidget, but within that page, you could have a StatefulWidget for a form that needs to validate user input or show error messages.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/enter-password.png", height: 200),
            SizedBox(height: 20),
            Text("Welcome $username", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                    onChanged: (value) => setState(() {
                      username = value;
                    }),
                  ),
                  TextFormField(
                    obscureText: true,
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
                      minimumSize: WidgetStateProperty.all(Size(120, 40)),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: Text("Login"),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
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
