import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Material(
          child: Center(
            child: Container(
              child: Text("Welcome to 30 days challenge"),
            ),
          ),
    ),
    );
  }
}

