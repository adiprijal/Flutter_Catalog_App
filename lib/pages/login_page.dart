import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

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

                  InkWell(
                    // async function to implement the delay for the animation of the button
                    onTap: () async {
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changeButton = true;
                      });

                      // await implement some delay to show the animation of the button
                      await Future.delayed(Duration(milliseconds: 600));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    // AnimatedContainer to implement the animation of the button
                    child: AnimatedContainer(
                      // duration of the animation of the button, can be measured in milliseconds, seconds, minutes, hours, days
                      duration: Duration(milliseconds: 600),
                      // width value changes based on the value of changeButton, if changeButton is true, width is 40, else width is 120
                      width: changeButton? 40: 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all( Radius.circular(24)),
                      ),
                      child: changeButton? Icon(Icons.done, color: Colors.white) : Text(
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