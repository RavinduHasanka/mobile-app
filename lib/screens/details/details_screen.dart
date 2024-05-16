import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Products.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'components/color_dots.dart';
import 'components/product_description.dart';
import 'components/product_images.dart';
import 'components/top_rounded_container.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const  DetailsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          // ProductImages(product: product),
          Image.asset(
            "assets/images/an3.png",
            height: MediaQuery.of(context).size.height * 0.3, // 30%
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                // ProductDescription(
                //   product: products,
                //   pressOnSeeMore: () {},
                // ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Rs. Selling Price",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "This is a sample product description for SEO.This is a sample product description for SEO.This is a sample product description for SEO.This is a sample product description for SEO.",
                    textAlign: TextAlign.justify, // This property aligns text within the widget horizontally.
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Text(
                        "Available Capacity :",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // ColorDots(
                        // colors: products
                        //     .colors.split(','),
                        // onColorSelected: (index) {
                          // Handle color selection logic
                        // },
                      // ),
                    ],
                  ),
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Text(
                        "Available Colours :",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // ColorDots(
                      // colors: products
                      //     .colors.split(','),
                      // onColorSelected: (index) {
                      // Handle color selection logic
                      // },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: TopRoundedContainer(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child: const Text("Add To Cart"),
            ),
          ),
        ),
      ),
    );
  }
}









