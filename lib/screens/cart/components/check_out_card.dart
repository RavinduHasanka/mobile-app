import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/payment/payment_screen.dart';

import '../../../constants.dart';

class CheckoutCard extends StatelessWidget {
  final List<Cart> cartItems;  // Add a list of Cart items
  const CheckoutCard({
    Key? key,
    required this.cartItems,  // Receive the list of Cart items as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalAmount = 0.0;

    // Calculate the total amount based on the cart items
    for (var cart in cartItems) {
      // totalAmount += cart.product!.price! * cart.numOfItem!;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "Total:\n",
                      children: [
                        TextSpan(
                          text: "\Rs. ${totalAmount.toStringAsFixed(2)}",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                if (totalAmount > 0)  // Show Checkout button only if there are items in the cart
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PaymentScreen.routeName);
                      },
                      child: const Text("Check Out"),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
