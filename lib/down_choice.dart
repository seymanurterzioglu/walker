import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
//import 'package:flutter/src/material/bottom_navigation_bar.dart';

class DownChoice extends StatefulWidget {
  @override
  _DownChoiceState createState() => _DownChoiceState();
}

class _DownChoiceState extends State<DownChoice> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.brown,
        selectedItemColor: Colors.white,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.person),
          ),
        ],

      ),

    );
  }
}

