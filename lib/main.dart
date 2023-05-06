import 'package:flutter/material.dart';
import 'package:group_chat/screens/welcome_screen.dart';
import 'package:group_chat/screens/login_screen.dart';
import 'package:group_chat/screens/registration_screen.dart';
import 'package:group_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
