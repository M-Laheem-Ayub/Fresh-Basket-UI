import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/screens/home_screen.dart';
import 'package:fresh_basket/widgets/detail_screen_app_bar.dart';
import 'package:fresh_basket/widgets/login_or_sign_up_button.dart';
import 'package:fresh_basket/widgets/my_text.dart';
import 'package:fresh_basket/widgets/my_textfield.dart';
import 'package:fresh_basket/widgets/my_read_more_text.dart';
import 'package:fresh_basket/widgets/product_description_container.dart';
import 'package:fresh_basket/widgets/product_detail_screen_button.dart';
import 'package:fresh_basket/widgets/title_price_row.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({
    super.key,
    required this.image,
    required this.type,
    required this.name,
    required this.description,
    required this.isFavorite,
    required this.price,
    required this.setFavorite,
    required this.index,
  });

  final String image;
  final String type;
  final String name;
  final String description;
  bool isFavorite;
  final double price;
  final Function setFavorite;
  final int index;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final appBar = AppBar(title: Text("My Page"));

  bool isExpanded = false;
  void ontoggle() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    double appBarHeight = appBar.preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double safeAreaHeigth = screenHeight - appBarHeight - statusBarHeight;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: DetailScreenAppBar(
          index: widget.index,
          isFavorite: widget.isFavorite,
          setFavorite: widget.setFavorite,
        ),

        body: SizedBox(
          height: safeAreaHeigth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: safeAreaHeigth * 0.88,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                        height: safeAreaHeigth * (isExpanded ? 0.50 : 0.63),
                        width: screenWidth,
                        color: Color(0xfff6b33e),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 10),
                            Image.asset(widget.image, width: screenWidth * 0.7),
                            TitlePriceRow(
                              name: widget.name,
                              type: widget.type,
                              price: widget.price,
                              safeAreaHeigth: safeAreaHeigth,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ProductDescriptionContainer(
                      description: widget.description,
                      safeAreaHeigth: safeAreaHeigth,
                      isExpanded: isExpanded,
                      ontoggle: ontoggle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20,
                ),
                child: Row(
                  spacing: screenWidth * 0.055,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductDetailScreenButton(title: "Add to cart"),
                    ProductDetailScreenButton(title: "Buy Now     "),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
