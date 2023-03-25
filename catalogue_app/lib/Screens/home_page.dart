import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var name = 'harsh';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("My name is Harsh"),
      ),
      drawer: Drawer(),
    );
  }
}
