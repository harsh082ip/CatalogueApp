import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://pps.whatsapp.net/v/t61.24694-24/323053441_546216777436915_9071446320041512910_n.jpg?ccb=11-4&oh=01_AdTYfYWpdec6zhg3-cmaTXGdT30VpEItDV9WVABNiCohBQ&oe=643FADF1";
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
                accountName: const Text(
                  "Harsh Vardhan Singh",
                ),
                accountEmail: const Text("lionrbl6@gmail.com"),
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
              leading: const Icon(
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
