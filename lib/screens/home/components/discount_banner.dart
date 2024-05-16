import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF000000),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Adjust the corner radius
          child: Image.network(
            'https://ishop.lk/asset/img/animation/anim25.jpg',
            fit: BoxFit.cover, // Adjust the BoxFit based on your requirement
          ),
        ),
      ),
    );
  }
}
