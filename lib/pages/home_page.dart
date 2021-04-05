import "package:flutter/material.dart";
import 'package:online_shop/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int day = 30;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $day days challenge"),
          ),
        ),
        drawer: MyDrawer()
      ),
    );
  }
}
