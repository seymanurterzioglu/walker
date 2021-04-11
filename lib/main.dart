import 'package:flutter/material.dart';
import 'package:walker/Welcome/welcome_screen.dart';
import 'package:walker/navigation_drawer.dart';

void main(
) {
  runApp(MyApp());
}

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