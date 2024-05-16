import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';
import '../sign_in/sign_in_screen.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';
import 'account_information_screen.dart';
import 'help_screen.dart';
import 'policies_screen.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            // ProfileMenu(
            //   text: "Account Information",
            //   icon: "assets/icons/User Icon.svg",
            //   press: () {
            //     // Navigate to AccountInformationScreen
            //     Navigator.pushNamed(context, AccountInformationScreen.routeName);
            //   },
            // ),
            // ProfileMenu(
            //   text: "Notifications",
            //   icon: "assets/icons/Bell.svg",
            //   press: () {
            //
            //   },
            // ),
            ProfileMenu(
              text: "Policies",
              icon: "assets/icons/receipt.svg",
              press: () {
                // Navigate to PoliciesScreen
                Navigator.pushNamed(context, PoliciesScreen.routeName);
              },
            ),
            ProfileMenu(
              text: "Help",
              icon: "assets/icons/Help.svg",
              press: () {
                // Navigate to PoliciesScreen
                Navigator.pushNamed(context, HelpScreen.routeName);
              },
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                logout();



              // String baseUrl = "http://localhost:5000";
              // String registrationEndpoint = "/logout"; // Replace with your actual login endpoint
              //
              // // Construct the registration URL
              // String registrationUrl = "$baseUrl$registrationEndpoint";
              //
              // // If successful, navigate to the Login Success screen
              // Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout() async {
    try {
      final response = await http.post(
        Uri.parse("${Config.BACKEND_URL}logout"),
        headers: <String, String>{
          // 'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // Clear local authentication tokens or session information
        // Navigate to login screen or any other appropriate screen
      } else {
        // Handle error scenarios
        print('Logout failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception during logout: $e');
    }
  }
}

