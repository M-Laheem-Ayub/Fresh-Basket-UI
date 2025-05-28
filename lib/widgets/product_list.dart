import 'package:flutter/material.dart';
import 'package:fresh_basket/helpers/screen_size.dart';
import 'package:fresh_basket/screens/product_detail_screen.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.selectedCategory,
    required this.scrollController,
    required this.setFavorite,
  });
  final List<Map<String, dynamic>> selectedCategory;
  final Function setFavorite;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenSize.height(context);
    double screenWidth = ScreenSize.width(context);
    return SizedBox(
      height: screenHeight * 0.375,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: selectedCategory.length,
        itemBuilder: (context, index) {
          final product = selectedCategory[index];
          return Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ProductDetailScreen(
                          image: product['image'],
                          type: product['type'],
                          name: product['name'],
                          description: product['description'],
                          isFavorite: product['favorite'],
                          price: product['price'],
                          setFavorite: setFavorite,
                          index: index,
                        ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                width: screenWidth * 0.8,
                child: Stack(
                  children: [
                    Image.asset("assets/images/shapes/shape2.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Column(
                        children: [
                          Transform.translate(
                            offset: Offset(0, -25),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: screenHeight * 0.175,

                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Transform.translate(
                                      offset: Offset(-15, 0),
                                      child: Image.asset(
                                        product['image'],
                                        width: screenWidth * 0.47,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setFavorite(index);
                                      },
                                      child: Icon(
                                        product['favorite']
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.white,
                                        size: screenWidth * 0.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 40,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    MyText(
                                      text: product['type'],
                                      color: Colors.white,
                                    ),
                                    MyText(
                                      text: product['name'],
                                      color: Colors.white,
                                      fWeight: FontWeight.bold,

                                      size: 18,
                                    ),
                                  ],
                                ),
                                MyText(
                                  text: "${product['price']}",
                                  color: Colors.white,
                                  fWeight: FontWeight.bold,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
