import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../config.dart';
import '../../../constants.dart';
import '../../../helper/keyboard.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => emailController.text = newValue!,
            onChanged: (value) {
              emailController.text = value;
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "1";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "0";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => passwordController.text = newValue!,
            onChanged: (value) {
              passwordController.text = value;
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.length >= 8) {
                removeError(error: kShortPassError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
            ],
          ),
          FormError(errors: errors),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              checkBackendStatus();
              login(emailController.text.toString(),passwordController.text.toString());

              },
              child: const Text("Sign in"),
          ),
        ],
      ),
    );
  }
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Future<void> checkBackendStatus() async {
    try {
      Response response = await http.get(
        Uri.parse("${Config.BACKEND_URL}status"),
      );
      if (response.statusCode == 200) {
        print('Backend is reachable');
      } else {
        print('Backend is not reachable');
      }
    } catch (e) {
      print('Error checking backend status: $e');
    }
  }

  void login(String email, String password) async{
    try{
      print(email);
      print(password);

      var data = {
        "email":email,
        "password":password,
      };
      var body = json.encode(data);
      Response response = await post(
          Uri.parse("${Config.BACKEND_URL}login"),
          headers: {"Content-Type":"application/json"},
          body: body
      );
      print(body);
      print(response.body);
      print(response.statusCode);
      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        String accessToken = data['accessToken'];
        print(data['accessToken']);
        print('Login Successfully');
        // Store the accessToken in shared preferences
        await saveAccessToken(accessToken);

        // Navigate to the next screen or perform any other actions
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginSuccessScreen(), // Replace with your next screen
          ),
        );
      }else{
        print('Login Failed');
      }
    }
    catch(e){
      print(e.toString());
    }
  }
  Future<void> saveAccessToken(String accessToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('accessToken', accessToken);
  }
}

