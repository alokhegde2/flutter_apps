import 'package:clockx/clock_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202F41),
      body:Container(
        alignment: Alignment.center,
        child: ClockView(),
      ),
    );
  }
}