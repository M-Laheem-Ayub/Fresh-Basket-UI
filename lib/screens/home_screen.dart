import 'package:flutter/material.dart';
import 'package:fresh_basket/widgets/my_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List categories = [
    ["fruit", "Fruit"],
    ["bakery", "Bakery"],
    ["drink", "Drink"],
    ["vegetable", "Vegetable"],
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/shape1.png",
                  width: screenWidth,
                  height: screenHeight * 0.46,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: screenHeight * 0.5, // same as shape1 image height
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
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
                              foregroundImage: AssetImage(
                                "assets/images/unnamed.jpg",
                              ),
                            ),
                          ],
                        ),
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
                        Row(
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                icon: Image.asset(
                                  "assets/icons/settings.png",
                                  width: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: SizedBox(
                            height: 110,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        (index == categories.length - 1)
                                            ? 0
                                            : 10,
                                    bottom: 10,
                                    left: 2,
                                  ),
                                  child: Container(
                                    width: 100,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                );
                              },
                            ),
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
                  SizedBox(height: 40),
                  Container(
                    width: screenWidth * 0.85,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/shape2.png"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Column(
                            children: [
                              Transform.translate(
                                offset: Offset(0, -30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Transform.translate(
                                      offset: Offset(-15, 0),
                                      child: Image.asset(
                                        "assets/images/product2.png",
                                        width: 170,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      MyText(text: "Fruit"),
                                      MyText(text: "Apple"),
                                    ],
                                  ),
                                  MyText(text: "40.0"),
                                ],
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
          ],
        ),
      ),
    );
  }
}
