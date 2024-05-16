import 'package:flutter/material.dart';
import '../../products/electronicsproducts_screen.dart';
import 'section_title.dart';

class ElectronicPopularProducts extends StatelessWidget {

  const ElectronicPopularProducts({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "ELECTRONIC",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ElectronicsProductsCard(
                image: "assets/images/e1.png",
                category: "Laptops",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
              ),
              ElectronicsProductsCard(
                image: "assets/images/e2.png",
                category: "UPS",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
              ),
              // const SizedBox(width: 20),
              ElectronicsProductsCard(
                image: "assets/images/e3.png",
                category: "Monitor",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
              ),
              ElectronicsProductsCard(
                image: "assets/images/e4.png",
                category: "Printer",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
              ),
              // const SizedBox(width: 20),
              ElectronicsProductsCard(
                image: "assets/images/e5.png",
                category: "Audio",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
              );
            },
              ),
              ElectronicsProductsCard(
                image: "assets/images/e6.png",
                category: "CCTV",
               press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElectronicsProductsScreen()),
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

class ElectronicsProductsCard extends StatelessWidget {
  const ElectronicsProductsCard({
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
