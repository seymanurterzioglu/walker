import 'package:flutter/material.dart';
//import 'package:walker/Widgets/constants.dart';

import 'down_choice.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DownChoice(),
    );
  }
}
