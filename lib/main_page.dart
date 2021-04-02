import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
import 'package:walker/down_choice.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("WALKER"),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: DownChoice(),
    ),
    );
  }
}
