import 'package:flutter/material.dart';
import 'package:fresh_basket/auth_toggle_text.dart';
import 'package:fresh_basket/my_button.dart';
import 'package:fresh_basket/my_text.dart';
import 'package:fresh_basket/my_textfield.dart';
import 'package:fresh_basket/remember_me_checkbox.dart';
import 'package:fresh_basket/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  void changeCheckedStatus() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/shape7.png"),
            SizedBox(height: 35),
            MyText(text: "Welcome Back!", fWeight: FontWeight.bold, size: 18),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10,
              ),
              child: Column(
                children: [
                  MyTextField(text: "Email", icon: Icons.email_outlined),
                  SizedBox(height: 10),
                  MyTextField(
                    text: "Password",
                    icon: Icons.lock_outline_rounded,
                  ),
                  RememberMeCheckBox(
                    isChecked: isChecked,
                    changeCheckedStatus: changeCheckedStatus,
                  ),
                  MyButton(text: "Login", onClick: () {}),
                  SizedBox(height: 10),
                  AuthToggleText(
                    text: "Don't have an account?",
                    actionText: " Sign Up",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),

            Image.asset("assets/images/shape6.png"),
          ],
        ),
      ),
    );
  }
}
