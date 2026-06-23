import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // appBar: AppBar(
      //   title: Center(child: Text("Login Page")),
      // ),
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
                      // Navigate to the home page when the login button is pressed. The route name is defined in the MyRoutes class, which allows for easy management of route names in one place.
                      // Navigator class is used to manage the navigation stack and push a new route onto it. The context parameter is used to access the current state of the widget tree and find the appropriate navigator for the current context.
                      // The pushNamed method is used to navigate to the specified route name, which is defined in the MyRoutes class. This allows for easy management of route names in one place, making it easier to update or change routes in the future.
                      // When the user presses the login button, the app will navigate to the home page using the route name defined in the MyRoutes class. This allows for easy management of route names in one place, making it easier to update or change routes in the future.
                      // After routing to the home page, the user can navigate back to the login page using the back button on their device or by using the Navigator.pop method. This allows for easy navigation between different pages in the app.
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
