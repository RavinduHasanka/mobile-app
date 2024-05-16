import 'package:flutter/material.dart';
import '../sign_in/sign_in_screen.dart';

class ActivationSuccessScreen extends StatefulWidget {
  static String routeName = "/login_success";

  const ActivationSuccessScreen({Key? key}) : super(key: key);

  @override
  _ActivationSuccessScreenState createState() => _ActivationSuccessScreenState();
}

class _ActivationSuccessScreenState extends State<ActivationSuccessScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 5 seconds and then navigate to home screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, SignInScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Image.asset(
            "assets/images/successgreen.png",
            height: MediaQuery.of(context).size.height * 0.4, // 40%
          ),
          const SizedBox(height: 55),
          const Text(
            "Your Account \n Activation Success",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
