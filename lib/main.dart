import 'package:flutter/material.dart';
import 'package:walker/Welcome/welcome_screen.dart';

// deneme
void main() {
  runApp(MyApp());
}
//deneme 2 büşra
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Sign in',
      theme:ThemeData(

        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomeScreen(),
    );
  }
}