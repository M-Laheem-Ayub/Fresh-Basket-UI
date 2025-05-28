import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.white),
            MyText(
              text: "Lahore, Pakistan",
              size: 17,
              fWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ],
        ),
        CircleAvatar(
          radius: 20,
          foregroundImage: AssetImage("assets/images/profile_img.png"),
        ),
      ],
    );
  }
}
