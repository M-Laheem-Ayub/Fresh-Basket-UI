import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';

class SearchBarWithSetting extends StatelessWidget {
  const SearchBarWithSetting({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 45,
          width: screenWidth * 0.74,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.61,
                  child: TextFormField(
                    style: TextStyle(fontSize: 13),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      hintText: "Search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/settings.png", width: 20),
          ),
        ),
      ],
    );
  }
}
