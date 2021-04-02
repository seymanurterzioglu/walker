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
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Calendar'),
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            title: Text('Add'),
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            title: Text('Alarm'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('Guide'),
            icon: Icon(Icons.person),
          ),
        ],
      ),

    );
  }
}

