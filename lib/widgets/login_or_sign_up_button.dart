import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class LoginOrSignUpButton extends StatelessWidget {
  const LoginOrSignUpButton({
    super.key,
    required this.text,
    required this.onClick,
  });
  final VoidCallback onClick;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xfff6b33e),
        fixedSize: Size(double.maxFinite, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onClick,
      child: MyText(text: text, fWeight: FontWeight.bold, size: 18),
    );
  }
}
