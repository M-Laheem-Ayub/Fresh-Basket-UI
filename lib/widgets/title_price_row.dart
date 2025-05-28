import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class TitlePriceRow extends StatelessWidget {
  const TitlePriceRow({
    super.key,
    required this.name,
    required this.type,
    required this.price,
    required this.safeAreaHeigth,
  });
  final String name;
  final String type;
  final double price;
  final double safeAreaHeigth;

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: safeAreaHeigth * 0.15,
          width: screenWidth,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: name,
                      color: Colors.white,
                      fWeight: FontWeight.w900,
                      size: 22,
                    ),
                    MyText(
                      text: type,
                      color: Colors.white,
                      size: 18,
                      fWeight: FontWeight.bold,
                    ),
                  ],
                ),
                MyText(
                  text: "\$ ${price}",
                  color: Colors.white,
                  size: 18,
                  fWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
