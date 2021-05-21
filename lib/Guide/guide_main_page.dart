import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_down_choice.dart';



class GuideMainPage extends StatefulWidget {
  @override
  _GuideMainPageState createState() => _GuideMainPageState();
}

class _GuideMainPageState extends State<GuideMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:GuideDownChoice(),
    );
  }
}
