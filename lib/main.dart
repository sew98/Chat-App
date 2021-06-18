import 'package:flutter/material.dart';
import 'package:chat_app1/screens/welcomeScreen.dart';
import 'package:chat_app1/screens/chatScreen.dart';
import 'package:chat_app1/screens/registrationScreen.dart';
import 'package:chat_app1/screens/loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

          return MaterialApp(
            initialRoute: WelcomeScreen.id,
            routes: {
              WelcomeScreen.id: (context) => WelcomeScreen(),
              LoginScreen.id: (context) => LoginScreen(),
              RegistrationScreen.id: (context) => RegistrationScreen(),
              ChatScreen.id: (context) => ChatScreen(),
            },
          );


  }
}
