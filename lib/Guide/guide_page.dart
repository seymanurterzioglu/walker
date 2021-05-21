import 'package:flutter/material.dart';
import 'package:walker/Tourist/main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';


class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Guide Home"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[
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