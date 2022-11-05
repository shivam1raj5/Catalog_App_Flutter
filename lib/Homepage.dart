import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Application")),
      body: Center(
        child: Container(
          child: Text("Age of Shivam is $age"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
