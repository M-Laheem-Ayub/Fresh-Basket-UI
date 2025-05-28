import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categories,
    required this.index,
    required this.setSelectedCategory,
  });
  final int index;
  final Function setSelectedCategory;
  final List categories;
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    return Padding(
      padding: EdgeInsets.only(
        right: (index == categories.length - 1) ? 4 : 10,
        bottom: 10,
        left: 2,
      ),
      child: GestureDetector(
        onTap: () {
          setSelectedCategory(categories[index][0]);
        },
        child: Container(
          width: screenWidth * 0.276,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/${categories[index][0]}.png",
                width: 50,
              ),
              SizedBox(height: 5),
              MyText(
                text: categories[index][1],
                fWeight: FontWeight.w900,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
