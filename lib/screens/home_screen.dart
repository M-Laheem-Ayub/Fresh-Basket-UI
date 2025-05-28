import 'package:flutter/material.dart';
import 'package:fresh_basket/data/product_info.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/widgets/category_card.dart';
import 'package:fresh_basket/widgets/my_app_bar.dart';
import 'package:fresh_basket/widgets/my_text.dart';
import 'package:fresh_basket/widgets/product_list.dart';
import 'package:fresh_basket/widgets/reverse_product_list.dart';
import 'package:fresh_basket/widgets/searchbar_with_setting.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;

  List categories = [
    ["fruit", "Fruit"],
    ["bakery", "Bakery"],
    ["drink", "Drink"],
    ["vegetable", "Vegetable"],
  ];

  void setFavorite(int index) {
    setState(() {
      selectedCategory[index]['favorite'] =
          !selectedCategory[index]['favorite'];
    });
  }

  void setSelectedCategory(String category) {
    setState(() {
      if (category == "fruit") {
        selectedCategory = fruits;
      } else if (category == "bakery") {
        selectedCategory = bakery;
      } else if (category == "drink") {
        selectedCategory = drinks;
      } else if (category == "vegetable") {
        selectedCategory = vegetables;
      }
      scrollController.animateTo(
        0,
        duration: Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    });
  }

  List<Map<String, dynamic>> selectedCategory = [];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    selectedCategory = fruits;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/shapes/shape1.png",
                    width: screenWidth,
                    height: screenHeight * 0.46,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: screenHeight * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyAppBar(),
                          SizedBox(height: 10),
                          MyText(
                            text: " Hello",
                            size: 17,
                            fWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          MyText(
                            text: " Laheem Ayub",
                            size: 17,
                            fWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          SearchBarWithSetting(),
                          SizedBox(height: 30),
                          SizedBox(
                            height: 110,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                return CategoryCard(
                                  categories: categories,
                                  index: index,
                                  setSelectedCategory: setSelectedCategory,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Best Sellers",
                      fWeight: FontWeight.w900,
                      size: 18,
                    ),
                    ProductList(
                      selectedCategory: selectedCategory,
                      scrollController: scrollController,
                      setFavorite: setFavorite,
                    ),
                    SizedBox(height: 10),
                    MyText(text: "For You", fWeight: FontWeight.w900, size: 18),
                    ReverseProductList(
                      selectedCategory: selectedCategory,
                      scrollController: scrollController,
                      setFavorite: setFavorite,
                    ),
                    SizedBox(height: 15),
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
