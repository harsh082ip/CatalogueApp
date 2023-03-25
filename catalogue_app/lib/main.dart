import 'package:catalogue_app/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'Screens/home_page.dart';
import 'Screens/login_page.dart';
import 'package:meta/meta.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    justABasicFunc(bol: true);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      //routes ====> specify different screen paths in path routes
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  //functions() in dart
  //@required is used for the elements which are utmost necessary to run code further
  //@override is used for modifying and reuse a function which was already built
  justABasicFunc({required bool bol, int a = 10}) {}
}
