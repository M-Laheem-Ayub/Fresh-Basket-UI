import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class ProductDetailScreenButton extends StatelessWidget {
  const ProductDetailScreenButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 38, vertical: 12),
        backgroundColor: Color(0xfff6b33e),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),

      onPressed: () {},
      child: MyText(text: title, color: Colors.white, fWeight: FontWeight.bold),
    );
  }
}
