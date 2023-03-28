import 'package:catalogue_app/Screens/home_page.dart';
import 'package:catalogue_app/utils/routes.dart';
import 'package:catalogue_app/widgets/themes.dart';
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
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      //routes ====> specify different screen paths in path routes
      // initialRoute: MyRoutes.loginRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        // "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // : (context) => LoginPage(),
      },
    );
  }

  //functions() in dart
  //@required is used for the elements which are utmost necessary to run code further
  //@override is used for modifying and reuse a function which was already built
  justABasicFunc({required bool bol, int a = 10}) {}
}
