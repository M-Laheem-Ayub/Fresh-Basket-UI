import 'package:flutter/material.dart';
import 'package:fresh_basket/screens/login_screen.dart';
// import 'package:fresh_basket/login_screen.dart';
import 'package:fresh_basket/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
    );
  }
}
