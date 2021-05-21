import 'package:flutter/material.dart';
import 'package:walker/Tourist/main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';



class GuideAlarmPage extends StatefulWidget {
  @override
  _GuideAlarmPageState createState() => _GuideAlarmPageState();
}

class _GuideAlarmPageState extends State<GuideAlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Guide Alarm "),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[  // tourist sayfasına gidecek, appbarda iconbutton
          IconButton(
            icon: const Icon(Icons.assessment),
            onPressed:() => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) {
                    return MainPage();
                  },
                ),
              ),
            },
          ),

        ],
      ),
    );
  }
}