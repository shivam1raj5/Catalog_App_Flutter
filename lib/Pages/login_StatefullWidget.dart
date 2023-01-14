import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class login_StatefullWidget extends StatefulWidget {
  @override
  State<login_StatefullWidget> createState() => _login_StatefullWidgetState();
}

// ignore: camel_case_types
class _login_StatefullWidgetState extends State<login_StatefullWidget> {
  String name = "";
  bool ChangeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 280.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "User Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name can not be Empty";
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can not be Empty";
                          } else if (value.length < 6) {
                            return "Password must be greater than 6";
                          }
                          return null;
                        },
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
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: ChangeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // ignore: deprecated_member_use
                            color: context.theme.buttonColor,
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
          ),
        ));
  }
}
