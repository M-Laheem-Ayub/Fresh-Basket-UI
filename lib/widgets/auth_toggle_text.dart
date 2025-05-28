import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class AuthToggleText extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback onTap;

  const AuthToggleText({
    Key? key,
    required this.text,
    required this.actionText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(text: text),
        GestureDetector(
          onTap: onTap,
          child: MyText(text: actionText, fWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
