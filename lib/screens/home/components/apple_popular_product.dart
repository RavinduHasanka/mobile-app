import 'package:flutter/material.dart';
import '../../products/appleproducts_screen.dart';
import 'section_title.dart';

class ApplePopularProducts extends StatelessWidget {

  const ApplePopularProducts({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "APPLE",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
              );
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AppleProductsCard(
                image: "assets/images/a1.png",
                category: "MacBook",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
                  );
                },
              ),
              AppleProductsCard(
                image: "assets/images/a2.png",
                category: "iPad",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AppleProductsCard(
                image: "assets/images/a3.png",
                category: "iPhone",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
                  );
                },
              ),
              AppleProductsCard(
                image: "assets/images/a4.png",
                category: "Apple Watch",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
                  );
                },
              ),
              AppleProductsCard(
                image: "assets/images/a5.png",
                category: "AirPods",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
                  );
                },
              ),
              AppleProductsCard(
                image: "assets/images/a6.png",
                category: "Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppleProductsScreen()),
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

class AppleProductsCard extends StatelessWidget {
  const AppleProductsCard({
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