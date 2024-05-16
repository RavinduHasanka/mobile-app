import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

class LoadingScreen extends StatefulWidget {
  static String routeName = "/loading";

  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer for 5 seconds
    Timer(Duration(seconds: 5), () {
      // Navigate to SplashScreen after 5 seconds
      Navigator.pushReplacementNamed(context, SplashScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.jpg", // replace 'your_logo.png' with your logo asset path
          height: 500, // adjust the height as needed
          width: 500, // adjust the width as needed
        ),
      ),
    );
  }
}
