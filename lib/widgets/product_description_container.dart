import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_read_more_text.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class ProductDescriptionContainer extends StatelessWidget {
  const ProductDescriptionContainer({
    super.key,
    required this.description,
    required this.safeAreaHeigth,
    required this.isExpanded,
    required this.ontoggle,
  });
  final String description;
  final double safeAreaHeigth;
  final bool isExpanded;
  final Function ontoggle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: "Description",
            fWeight: FontWeight.bold,
            color: Colors.black38,
            size: 16,
          ),
          SizedBox(height: 4),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
            height: safeAreaHeigth * (isExpanded ? 0.29 : 0.16),
            child: SingleChildScrollView(
              child: MyReadMoreText(
                isExpanded: isExpanded,
                text: description,
                onToggle: () {
                  ontoggle();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
