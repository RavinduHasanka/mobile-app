import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../otp/otp_screen.dart';
import 'package:shop_app/config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
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
            keyboardType: TextInputType.text,
            onSaved: (newValue) => firstNameController.text = newValue!,
            onChanged: (value) {
              firstNameController.text = value;
              if (value.isNotEmpty) {
                removeError(error: kFirstnameNullError);
              } else if (FirstnameValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidFirstnameError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kFirstnameNullError);
                return "";
              } else if (!FirstnameValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidFirstnameError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "First Name",
              hintText: "Enter your first name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => lastNameController.text = newValue!,
            onChanged: (value) {
              lastNameController.text = value;
              if (value.isNotEmpty) {
                removeError(error: kLastnameNullError);
              } else if (LastnameValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidLastnameError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kLastnameNullError);
                return "";
              } else if (!LastnameValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidLastnameError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Last Name",
              hintText: "Enter your last name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
            ),
          ),
          const SizedBox(height: 20),
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
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
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
              password = value;
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
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
            ),
          ),

          const SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => conform_passwordController.text = newValue!,
            onChanged: (value) {
              conform_passwordController.text = value;
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.isNotEmpty && password == conform_password) {
                removeError(error: kMatchPassError);
              }
              conform_password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if ((password != value)) {
                addError(error: kMatchPassError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Confirm Password",
              hintText: "Re-enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
            ),
          ),
          FormError(errors: errors),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              checkBackendStatus();
              rigister(firstNameController.text.toString(), lastNameController.text.toString(), emailController.text.toString(),passwordController.text.toString());
            },
            child: const Text("Create Account"),
          ),
        ],
      ),
    );
  }
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conform_passwordController = TextEditingController();

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


//
//   void rigister(String firstName ,String lastName,String email, String password) async{
//      try{
//         // print(firstName);
//         // print(lastName);
//         // print(email);
//         // print(password);
//
//       var data = {
//           "firstName":firstName,
//           "lastName":lastName,
//           "email":email,
//           "password":password,
//         };
//       var body = json.encode(data);
//       Response response = await post(
//           Uri.parse("${Config.BACKEND_URL}registration"),
//           headers: {"Content-Type":"application/json"},
//           body: body
//       );
//        print(body);
//       print(response.body);
//       print(response.statusCode);
//       if(response.statusCode == 200){
//         var activationToken = json.decode(response.body)['activationToken'];
//         print('Account Created Successfully');
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => OtpScreen(activationToken: activationToken),
//             ),
//         );
//
//     }else{
//         print('Account Created Failed');
//       }
//     }
//     catch(e){
//       print(e.toString());
//     }
//   }
// }



  void rigister(String firstName ,String lastName,String email, String password) async{
    try{
        print(firstName);
        print(lastName);
        print(email);
        print(password);

      var data = {
          "firstName":firstName,
          "lastName":lastName,
          "email":email,
          "password":password,
        };
      var body = json.encode(data);
      Response response = await post(
          Uri.parse("${Config.BACKEND_URL}registration"),
          headers: {"Content-Type":"application/json"},
          body: body
      );
      print(body);
      print(response.body);
      print(response.statusCode);

      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        String activationToken = data['activationToken'];
        print(data['activationToken']);
        print('Account Created Successfully');

        // Navigate to the next screen or perform any other actions
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(activationToken: activationToken) // Replace with your next screen
          ),
        );
      }else{
        print('Account Created Failed');
      }
    }
    catch(e){
      print(e.toString());
    }
  }
  Future<void> saveAccessToken(String activationToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('activationToken', activationToken);
  }
}

