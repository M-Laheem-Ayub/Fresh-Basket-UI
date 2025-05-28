import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/widgets/auth_toggle_text.dart';
import 'package:fresh_basket/screens/login_screen.dart';
import 'package:fresh_basket/widgets/login_or_sign_up_button.dart';
import 'package:fresh_basket/widgets/my_text.dart';
import 'package:fresh_basket/widgets/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight * 0.965,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/shapes/shape8.png",
                  width: screenWidth,
                  height: screenHeight * 0.2,
                  fit: BoxFit.fill,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      MyText(
                        text: "Welcome Back!",
                        fWeight: FontWeight.bold,
                        size: 18,
                      ),
                      SizedBox(height: 20),
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
                      LoginOrSignUpButton(
                        text: "Create",
                        onClick: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10),
                      AuthToggleText(
                        text: "Already have an account?",
                        actionText: " Login",
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/shapes/shape9.png",
                  width: screenWidth,
                  height: screenHeight * 0.14,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
