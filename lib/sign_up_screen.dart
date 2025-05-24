import 'package:flutter/material.dart';
import 'package:fresh_basket/auth_toggle_text.dart';
import 'package:fresh_basket/my_button.dart';
import 'package:fresh_basket/my_text.dart';
import 'package:fresh_basket/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverflowBox(
        maxHeight: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/shape8.png"),
              MyText(text: "Welcome Back!", fWeight: FontWeight.bold, size: 18),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    MyTextField(
                      text: "Username",
                      icon: Icons.person_outline_rounded,
                    ),
                    SizedBox(height: 10),
                    MyTextField(
                      text: "Password",
                      icon: Icons.lock_outline_rounded,
                    ),
                    SizedBox(height: 10),

                    MyTextField(text: "Email", icon: Icons.email_outlined),
                    SizedBox(height: 10),
                    MyTextField(text: "Phone", icon: Icons.phone),
                    SizedBox(height: 10),

                    MyButton(text: "Create", onClick: () {}),
                    SizedBox(height: 10),
                    AuthToggleText(
                      text: "Already have an account?",
                      actionText: " Login",
                      onTap: () {
                        // Navigate to Sign Up screen
                      },
                    ),
                  ],
                ),
              ),

              Image.asset("assets/images/shape9.png"),
            ],
          ),
        ),
      ),
    );
  }
}
