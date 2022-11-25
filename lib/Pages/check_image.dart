import 'package:flutter/material.dart';

class CheckImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/undraw_Engineer.png",
          fit: BoxFit.contain,
          height: 500,
          width: 1000,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 280.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "User Name",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                },
                child: Text("Login"),
                style: TextButton.styleFrom(),
              )
            ],
          ),
        ),
      ],
    ));
  }

  BoxFit get newMethod => BoxFit.cover;
}