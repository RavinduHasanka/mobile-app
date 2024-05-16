import 'package:flutter/material.dart';
import '../../products/usedproducts_screen.dart';
import 'section_title.dart';

class UsedPopularProducts extends StatelessWidget {

  const UsedPopularProducts({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "USED / PRE-OWNED",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
              );
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              UsedProductsCard(
                image: "assets/images/u1.png",
                category: "iPhone",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
                  );
                },
              ),
              UsedProductsCard(
                image: "assets/images/u2.png",
                category: "Laptops",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              UsedProductsCard(
                image: "assets/images/u3.png",
                category: "MacBook",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
                  );
                },
              ),
              UsedProductsCard(
                image: "assets/images/u4.png",
                category: "iPad",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              UsedProductsCard(
                image: "assets/images/u5.png",
                category: "Watch",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
                  );
                },
              ),
              UsedProductsCard(
                image: "assets/images/u6.png",
                category: "Monitor",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsedProductsScreen()),
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

class UsedProductsCard extends StatelessWidget {
  const UsedProductsCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;
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
