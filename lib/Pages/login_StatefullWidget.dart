import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class login_StatefullWidget extends StatefulWidget {
  @override
  State<login_StatefullWidget> createState() => _login_StatefullWidgetState();
}

// ignore: camel_case_types
class _login_StatefullWidgetState extends State<login_StatefullWidget> {
  String name = "";
  bool ChangeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_Engineer.png",
            fit: BoxFit.contain,
            height: 500,
            width: 1000,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 280.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "User Name",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                /*ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  style: TextButton.styleFrom(),
                  child: Text("Login"),
                )*/
                InkWell(
                  onTap: () async {
                    setState(() {
                      ChangeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: ChangeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(ChangeButton ? 50 : 80),
                    ),
                    child: ChangeButton
                        ? Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
