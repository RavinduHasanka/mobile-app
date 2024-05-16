import 'package:flutter/material.dart';
import 'package:shop_app/models/Products.dart';
import '../constants.dart';
import '../models/Products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.products,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio;
  final List<Products>? products;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
  print("Card");
    return SizedBox(
      width: 140,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                // child: Image.asset(product?.elementAt(index).imageUrls?.first.url ?? ''),
                // child: Image.asset(productdata?.existProducts?.elementAt(index).imageUrls?.first.url ??''),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "t",
              // product?.elementAt(index).productName.toString() ?? '',
              // productdata?.existProducts?.elementAt(index).productName.toString() ??'',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "t",
                  // "\Rs.${product?.elementAt(index).sellingPrice.toString() ?? ''}",
                  // "\Rs.${productdata?.existProducts?.elementAt(index).sellingPrice.toString() ??''}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

