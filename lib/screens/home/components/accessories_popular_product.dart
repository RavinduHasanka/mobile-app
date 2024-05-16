import 'package:flutter/material.dart';
import '../../products/accessoriesproducts_screen.dart';
import 'section_title.dart';

class AccessoriesPopularProducts extends StatelessWidget {

  const AccessoriesPopularProducts({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "ACCESSORIES",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
              );
            },
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AccessoriesProductsCard(
                image: "assets/images/ac1.png",
                category: "Electronic Accessories",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                      );
                   },
              ),
              AccessoriesProductsCard(
                image: "assets/images/ac2.png",
                category: "Computer Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AccessoriesProductsCard(
                image: "assets/images/ac3.png",
                category: "Mobile Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                  );
                },
              ),
              AccessoriesProductsCard(
                image: "assets/images/ac4.png",
                category: "Printers Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                  );
                },
              ),
              // const SizedBox(width: 20),
              AccessoriesProductsCard(
                image: "assets/images/ac5.png",
                category: "Laptops Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                  );
                },
              ),
              AccessoriesProductsCard(
                image: "assets/images/ac6.png",
                category: "Apple Accessories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccessoriesProductsScreen()),
                  );
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class AccessoriesProductsCard extends StatelessWidget {
  const AccessoriesProductsCard({
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