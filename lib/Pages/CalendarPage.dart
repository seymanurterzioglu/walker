import 'package:flutter/material.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';

//import 'package:walker/Widgets/constants.dart';
class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Calendar Page"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
    );
  }
}
