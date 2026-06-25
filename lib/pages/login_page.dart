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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Image.asset("assets/images/enter-password.png", height: 200),
            ),
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

                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(changeButton? 20: 8),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                    
                        await Future.delayed(Duration(milliseconds: 600));
                        await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          changeButton = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 600),
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton? Icon(Icons.done, color: Colors.white) : Text(
                          "Login",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
                        ),
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