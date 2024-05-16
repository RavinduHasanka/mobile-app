import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import '../../../constants.dart';

class HelpMenu extends StatelessWidget {
  const HelpMenu({
    Key? key,
    required this.text,
    required this.text2,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, text2, icon;
  final VoidCallback? press;

  // Define functions to handle button clicks
  void _callUs() async {
    const phoneNumber = 'tel:077244633';
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      print('Could not launch $phoneNumber');
    }
  }

  void _emailUs() async {
    const emailAddress = 'mailto:info@ishop.lk';
    if (await canLaunch(emailAddress)) {
      await launch(emailAddress);
    } else {
      print('Could not launch $emailAddress');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: kPrimaryColor,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: () {
          // Call the appropriate function based on the button clicked
          if (text == 'Call Us') {
            _callUs();
          } else if (text == 'Email Us') {
            _emailUs();
          } else {
            press?.call(); // If press is provided, call the custom press function
          }
        },
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
