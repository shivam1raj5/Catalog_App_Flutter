import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'Pages/login_StatelessWidget.dart';
import 'Pages/login_StatefullWidget.dart';
import 'Pages/homepage.dart';

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
        "/": (context) => homepage(),
        MyRoutes.homeRoute: (context) => login_StatefullWidget(),
        MyRoutes.loginRoutes_2: (context) => homepage(),
        MyRoutes.loginRoutes_1: (context) => login_StatelessWidget(),
      },
    );
  }
}
