
import 'package:flutter/material.dart';

class CheckImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/undraw_Engineer.png",fit: BoxFit.cover,),
          Text("Welcome", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),)
        ],
      )
    );
  }
}