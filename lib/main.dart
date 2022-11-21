import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/login.dart';

import 'Pages/Homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/":(context) => Homepage(),
      },
    );
  }
}
