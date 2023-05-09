import 'package:flutter/material.dart';
import 'package:group_chat/components/rounded_button.dart';
import 'package:group_chat/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputTextDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kInputTextDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(Colors.lightBlueAccent, 'LogIn', '/chat'),
          ],
        ),
      ),
    );
  }
}
