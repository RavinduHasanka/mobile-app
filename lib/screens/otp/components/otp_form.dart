import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../../../config.dart';
import '../../../constants.dart';
import '../../activation_success/activation_success_screen.dart';
import '../../login_success/login_success_screen.dart';


class OtpForm extends StatefulWidget {
  final String activationToken;
  const OtpForm({
    Key? key,
    required this.activationToken,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  String otpValue = ''; // State variable to store OTP value

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextFormField(
                  autofocus: true,
                  style: const TextStyle(fontSize: 30),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration.copyWith(
                    hintText: 'XXX-XXX-XXX',
                    counterText: '',
                  ),
                  onChanged: (value) {
                    setState(() {
                      otpValue = value; // Save the value to state variable
                    });
                    // print('OTP Value: $value'); // Print value to console
                  },
                  maxLength: 11,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Text(
            'Enter Activation code with " - " symbol',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          ElevatedButton(
            onPressed: () {
              // checkBackendStatus();
              // otp(otpValue, widget.activationToken); // Pass OTP value to otp function
                Navigator.pushNamed(context, ActivationSuccessScreen.routeName);
            },
            child: Text('Activate User'),
          )
        ],
      ),
    );
  }

  TextEditingController ActivationCodeController = TextEditingController();
  TextEditingController ActivationTokenController = TextEditingController();

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

  void otp(String userActivationCode ,activationToken) async{
    try{

      var data = {
        "userActivationCode":userActivationCode,
        "userActivationToken":activationToken,
      };
      print('Activation Code: $userActivationCode');
      print('activation Token: $activationToken');

      var body = json.encode(data);
      Response response = await post(
          Uri.parse("${Config.BACKEND_URL}activate-user"),
          headers: {"Content-Type":"application/json"},
          body: body
      );
      if(response.statusCode == 200){
        print('User Activation Successfully');
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ActivationSuccessScreen()),);
      }else{
        print('User Activation Failed');
        print(response.statusCode);
        print(response.body);
      }
    }
    catch(e){
      print(e.toString());
    }
  }
}
