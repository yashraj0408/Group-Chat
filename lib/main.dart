import 'package:flutter/material.dart';
import 'package:group_chat/screens/welcome_screen.dart';
import 'package:group_chat/screens/login_screen.dart';
import 'package:group_chat/screens/registration_screen.dart';
import 'package:group_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(GroupChat());
}

class GroupChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.black54),
      //   ),
      // ),

      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}
