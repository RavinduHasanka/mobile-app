import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for FilteringTextInputFormatter
import '../../constants.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cardNumberController = TextEditingController();
    TextEditingController cardHolderController = TextEditingController();
    TextEditingController expiryDateController = TextEditingController();
    TextEditingController cvcController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        // title: const Text("Payment"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Checkout",
                  style: headingStyle,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Shipping details:\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Shipping Address",
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Payment Details: \n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextFormField(
                  enabled: false,
                  // initialValue: "Rs.", // Initial value
                  decoration: InputDecoration(
                    labelText: "Payment Amount",
                    prefixText: "Rs.", // Prefix text
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: cardHolderController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(19),
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z\s]")),
                  ],
                  decoration: InputDecoration(
                    labelText: "Cardholder Name",
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: cardNumberController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(19),
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                  ],
                  decoration: InputDecoration(
                    labelText: "Card Number",
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: TextFormField(
                        controller: expiryDateController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(4),
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9/]")),
                        ],
                        decoration: InputDecoration(
                          labelText: "Expiry Date",
                          hintText: "MM/YY",
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        controller: cvcController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(3),
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                        ],
                        decoration: InputDecoration(
                          labelText: "CVC",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey[850],
                ),
                const SizedBox(height: 10),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "LKR. 00.00",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Shipping",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "LKR. 00.00",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[850],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "LKR 00.00",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle payment processing logic
                  },
                  child: const Text("Submit Order", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




