import 'package:flutter/material.dart';
import 'package:shop_app/screens/payment/payment_screen.dart';

import 'components/check_out_card.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";

  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.close,
                size: 30,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 20,
                    ),
                    Container(
                      height: 130,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20),
                      child: Card(
                        color: Colors.white,
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0))),
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              top: 12, left: 125, right: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "JBL Quantum 400",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "LKR 55,000.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 15, bottom: 10),
                      child: Image.asset(
                        "assets/images/e5.png",
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 20,
                    ),
                    Container(
                      height: 130,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20),
                      child: Card(
                        color: Colors.white,
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0))),
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              top: 12, left: 125, right: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Google Pixel 8 Pro",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "LKR 310,000.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 15, bottom: 10),
                      child: Image.asset(
                        "assets/images/p8p.png",
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey[350],
                margin: EdgeInsets.only(top: 25),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              //   child: Text(
              //     "Custom Order: Your card may be charged before the order ships.",
              //     style: TextStyle(color: Colors.grey[500]),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(
                  "Colombo and city limits take 5 to 24 hours and more remote areas can take up to 3 days.",
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(bottom: 20),
                color: Colors.grey[200],
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Stack(
                      children: <Widget>[
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
                                  "LKR. 365000.00",
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
                                  "LKR. 650.00",
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
                                  "LKR 365650.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Questions? ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "+94 777 244 633",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],

                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 22, left: 20, right: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PaymentScreen()));
                  },
                  child: const Text("Checkout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

