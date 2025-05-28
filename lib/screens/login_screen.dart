import 'package:flutter/material.dart';
import 'package:fresh_basket/screens/home_screen.dart';
import 'package:fresh_basket/widgets/auth_toggle_text.dart';
import 'package:fresh_basket/widgets/my_button.dart';
import 'package:fresh_basket/widgets/my_text.dart';
import 'package:fresh_basket/widgets/my_textfield.dart';
import 'package:fresh_basket/widgets/remember_me_checkbox.dart';
import 'package:fresh_basket/screens/sign_up_screen.dart';

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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/shape7.png",
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
                      MyButton(
                        text: "Login",
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10),
                      AuthToggleText(
                        text: "Don't have an account?",
                        actionText: " Sign Up",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/shape6.png",
                  width: screenWidth,
                  height: screenHeight * 0.2,
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
