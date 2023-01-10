import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://pbs.twimg.com/profile_images/1611097986515488768/6tHK9XZT_400x400.jpg";
    return Drawer(
      child: Container(
        color: context.cardColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shivam Raj"),
                accountEmail: Text("shivam1raj5@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: context.accentColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: context.accentColor),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: context.accentColor,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: context.accentColor),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bell_fill,
                color: context.accentColor,
              ),
              title: Text(
                "Notification",
                textScaleFactor: 1.4,
                style: TextStyle(color: context.accentColor),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: context.accentColor,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.4,
                style: TextStyle(color: context.accentColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
