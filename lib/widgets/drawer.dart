// Drawer widget for the app
// It provides a navigation drawer that can be used to navigate between different pages of the app.

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final String profilePicUrl = "https://avatars.githubusercontent.com/u/94229057?v=4";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
      // The ListView widget is used to create a scrollable list of items in the drawer.
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(
              //     color: Colors.deepPurple.shade500,
              //   ),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                margin: EdgeInsets.zero,
                // To make the profile picture circular, we use CircleAvatar widget.
                // In CircleAvatar, we can use property backgroundImage or child to set the image. Here, we are using backgroundImage property to set the profile picture.
                // If you want to use child property, you can use Image.network(profilePicUrl) or Image.asset('assets/images/profile_pic.png') to set the profile picture.
                // If you use backgroundImage property, you can use NetworkImage(profilePicUrl) or AssetImage('assets/images/profile_pic.png') to set the profile picture.
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
          ],
        ),
      ),
    );
  }
}
