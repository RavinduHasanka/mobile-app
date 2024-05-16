import 'package:flutter/material.dart';

import 'components/help_menu.dart';

class HelpScreen extends StatelessWidget {
  static String routeName = "/help_screen";

  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'HELP CENTER',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            HelpMenu(
              text: "Call Us",
              text2: "9.00 a.m. - 9.00 p.m. (Mon -Sat) \n9.00 a.m. - 1.30 p.m. (Sun)",
              icon: "assets/icons/Call.svg",
            ),
            HelpMenu(
              text: "Email Us",
              text2: "Response Time within 48 Hours",
              icon: "assets/icons/Mail.svg",
            ),
          ],
        ),
      ),
    );
  }
}