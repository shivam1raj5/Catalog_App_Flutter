import 'package:flutter/material.dart';

class check_font extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 26,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 3.0,
        ),
      ),
    );
  }
}