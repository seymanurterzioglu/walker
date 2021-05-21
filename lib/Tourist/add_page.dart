import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Tourist Add"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[  // // guide sayfasına gidecek, appbarda iconbutton
          IconButton(
            icon: const Icon(Icons.assessment),
            onPressed:() => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) {
                    return GuideMainPage();
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