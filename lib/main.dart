import 'package:flutter/material.dart';
import 'package:online_shop/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => HomePage(),
        "/": (context) => LoginPage()
      },
    );
  }
}
