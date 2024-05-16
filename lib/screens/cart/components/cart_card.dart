import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Cart.dart';
import '../../../models/Products.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
    this.product,
    this.onQuantityChanged,
  }) : super(key: key);

  final Cart cart;
  final Products? product;
  final Function(int)? onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              // child: Image.network(product!.images![0]), // Use product image
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   product!.name!, // Use product title
            //   style: const TextStyle(color: Colors.black, fontSize: 16),
            //   maxLines: 2,
            // ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                // text: "\Rs. ${product!.price}", // Use product price
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItem}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (cart.numOfItem! > 1) {
                      onQuantityChanged!(cart.numOfItem! - 1);
                    }
                  },
                ),
                Text("${cart.numOfItem}"),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    onQuantityChanged!(cart.numOfItem! + 1);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
