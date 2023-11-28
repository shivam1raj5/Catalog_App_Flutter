import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamColor,
        colorScheme: ColorScheme.light(
          primary: Colors.deepPurple,
          secondary: darkBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        colorScheme: ColorScheme.dark(
          primary: Colors.black,
          secondary: lightBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
