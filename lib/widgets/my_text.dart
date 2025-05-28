// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fWeight = FontWeight.normal,
    this.size = 14,
    this.height = 1.5,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final double size, height;
  final FontWeight fWeight;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fWeight,
        color: color,
        decoration: TextDecoration.none,
        height: height,
      ),
    );
  }
}
