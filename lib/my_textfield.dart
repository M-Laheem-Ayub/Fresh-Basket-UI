import 'package:flutter/material.dart';
import 'package:fresh_basket/my_text.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(fontSize: 14),

      decoration: InputDecoration(
        hoverColor: Colors.black,

        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18),
            SizedBox(width: 10),
            MyText(
              text: text,
              fWeight: FontWeight.bold,
              color: Colors.black.withValues(alpha: 0.4),
            ),
          ],
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
