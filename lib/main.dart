import 'package:flutter/material.dart';
// import 'package:fresh_basket/login_screen.dart';
import 'package:fresh_basket/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
    );
  }
}
