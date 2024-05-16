import 'package:flutter/material.dart';
import 'package:shop_app/screens/products/androidproducts_screen.dart';
import 'section_title.dart';

class AndroidPopularProducts extends StatelessWidget {

  const AndroidPopularProducts({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "ANDROID PHONE",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
              );
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AndriodProductsCard(
                image: "assets/images/an1.png",
                category: "Samsung",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              AndriodProductsCard(
                image: "assets/images/an2.png",
                category: "Google Pixel",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AndriodProductsCard(
                image: "assets/images/an3.png",
                category: "Redmi",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              AndriodProductsCard(
                image: "assets/images/an4.png",
                category: "Realme",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AndriodProductsCard(
                image: "assets/images/an5.png",
                category: "Huawei",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              AndriodProductsCard(
                image: "assets/images/an6.png",
                category: "Oppo",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AndriodProductsCard(
                image: "assets/images/an7.png",
                category: "OnePlus",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AndroidProductsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AndriodProductsCard extends StatelessWidget {
  const AndriodProductsCard({
    Key? key,
    required this.category,
    required this.image,
    // required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  // final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}