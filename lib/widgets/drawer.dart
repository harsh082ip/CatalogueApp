import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://pps.whatsapp.net/v/t61.24694-24/323053441_546216777436915_9071446320041512910_n.jpg?ccb=11-4&oh=01_AdQV4Gue3oQwm5-GxNc86R6W3lsLbBSivadbM7qbdsjaZQ&oe=642F3331";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Harsh Vardhan Singh",
                ),
                accountEmail: Text("lionrbl6@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              onLongPress: () {
                print("Button Long Pressed!");
              },
              onTap: () {
                print("Button Clicked!");
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                print("Button Clicked");
              },
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                print("button clicked");
              },
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
