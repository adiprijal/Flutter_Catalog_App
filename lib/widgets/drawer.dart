import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final String profilePicUrl =
        "https://avatars.githubusercontent.com/u/94229057?v=4";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profilePicUrl),
                ),
                accountName: Row(
                  children: [
                    Icon(Icons.person, size: 16, color: Colors.white),
                    SizedBox(width: 4),
                    Text("adiprijal"),
                  ],
                ),
                accountEmail: Row(
                  children: [
                    Icon(Icons.email, size: 16, color: Colors.white),
                    SizedBox(width: 4),
                    Text("iamadiprijal@gmail.com"),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text(
                "Dashboard",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_sharp, color: Colors.white),
              title: Text(
                "Contact Support",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
