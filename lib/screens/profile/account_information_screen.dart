import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AccountInformationScreen extends StatefulWidget {
  static String routeName = "/account_information_screen";

  const AccountInformationScreen({Key? key}) : super(key: key);

  @override
  _AccountInformationScreenState createState() =>
      _AccountInformationScreenState();
}

class _AccountInformationScreenState extends State<AccountInformationScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Fetch user information when the screen initializes
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    try {
      // Replace with your actual backend API endpoint
      var response = await http.post(
        Uri.parse('http://localhost:5000/login'),
        body: jsonEncode({
          "email": "user@example.com", // Replace with actual user email
          "password": "userpassword",   // Replace with actual user password
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Parse the response JSON
        Map<String, dynamic> userData = jsonDecode(response.body);

        // Update the controllers with the fetched data
        setState(() {
          _firstNameController.text = userData['firstName'];
          _lastNameController.text = userData['lastName'];
          _passwordController.text = userData['password'];
          _mobileController.text = userData['mobile'];
          _emailController.text = userData['email'];
          _addressController.text = userData['address'];
        });
      } else {
        // Handle error
        print('Failed to fetch user data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      print('Error fetching user data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            AccountinfoMenu(
              text: "First Name",
              controller: _firstNameController,
              press: () => _showEditPopup(context, _firstNameController, "First Name"),
            ),
            AccountinfoMenu(
              text: "Last Name",
              controller: _lastNameController,
              press: () => _showEditPopup(context, _lastNameController, "Last Name"),
            ),
            AccountinfoMenu(
              text: "Change Password",
              controller: _passwordController,
              press: () => _showEditPasswordPopup(context, _passwordController),
            ),
            AccountinfoMenu(
              text: "Change Mobile",
              controller: _mobileController,
              press: () => _showEditPopup(context, _mobileController, "Change Mobile"),
            ),
            AccountinfoMenu(
              text: "Change Email",
              controller: _emailController,
              press: () => _showEditPopup(context, _emailController, "Change Email"),
            ),
            AccountinfoMenu(
              text: "Change Address",
              controller: _addressController,
              press: () => _showEditPopup(context, _addressController, "Change Address"),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditPopup(
      BuildContext context, TextEditingController controller, String fieldName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit $fieldName"),
          content: TextField(
            controller: controller,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Save changes and update the AccountinfoMenu text
                setState(() {
                  // Save changes to your backend or wherever needed
                  // For example, saving to a variable and updating the controller text
                  controller.text = controller.text; // Replace with your logic
                });
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _showEditPasswordPopup(BuildContext context, TextEditingController controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Change Password"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Enter new password:"),
              TextField(
                controller: controller,
                obscureText: true,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Save changes and update the AccountinfoMenu text
                setState(() {
                  // Save changes to your backend or wherever needed
                  // For example, saving to a variable and updating the controller text
                  controller.text = '*' * controller.text.length; // Display asterisks
                });
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}

class AccountinfoMenu extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final TextEditingController controller;

  const AccountinfoMenu({
    Key? key,
    required this.text,
    required this.press,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      subtitle: Text(controller.text), // Display the current value
      onTap: press,
    );
  }
}
