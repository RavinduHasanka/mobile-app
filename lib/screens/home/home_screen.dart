import 'package:flutter/material.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/apple_popular_product.dart';
import 'components/android_popular_product.dart';
import 'components/electronic_popular_product.dart';
import 'components/accessories_popular_product.dart';
import 'components/used_popular_product.dart';
import 'components/special_offers.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: <Widget>[
              HomeHeader(),
              DiscountBanner(),
              Categories(),
              SpecialOffers(),
              SizedBox(height: 20),
              ApplePopularProducts(),
              SizedBox(height: 20),
              AndroidPopularProducts(),
              SizedBox(height: 20),
              ElectronicPopularProducts(),
              SizedBox(height: 20),
              AccessoriesPopularProducts(),
              SizedBox(height: 20),
              UsedPopularProducts(),
              SizedBox(height: 20),
              // SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
