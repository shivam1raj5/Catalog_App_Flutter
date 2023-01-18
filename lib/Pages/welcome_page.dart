import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/undraw_welcome_cats_thqn.png",
                  fit: BoxFit.contain,
                  height: 450,
                  width: 1000,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "WELCOME TO SHIVAM'S APP",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ).py32(),
                Text(
                  "TO SEARCH THE ITEMS PLEASE LOGIN",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ).py16(),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 150.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => context.vxNav
                            .push(Uri.parse(MyRoutes.loginRoutes_2)),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // ignore: deprecated_member_use
                            color: context.theme.buttonColor,
                          ),
                          child: const Text(
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

class ChangeButton {}
