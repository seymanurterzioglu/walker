import 'package:flutter/material.dart';
import 'package:walker/AddPage.dart';
import 'package:walker/AlarmPage.dart';
import 'package:walker/CalendarPage.dart';
import 'package:walker/GuidePage.dart';
import 'package:walker/HomePage.dart';
import 'package:walker/constants.dart';

class DownChoice extends StatefulWidget {
  @override
  _DownChoiceState createState() => _DownChoiceState();
}

class _DownChoiceState extends State<DownChoice> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        backgroundColor: kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: white,
              size: 18,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: white,
              ),
            ),
            activeIcon: Icon(
              Icons.home,
              color: white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add,
              color: white,
              size: 18,
            ),
            title: Text(
              'Add',
              style: TextStyle(
                color: white,
              ),
            ),
            activeIcon: Icon(
              Icons.add,
              color: white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.calendar_today,
              color: white,
              size: 18,
            ),
            title: Text(
              'Calendar',
              style: TextStyle(
                color: white,
              ),
            ),
            activeIcon: Icon(
              Icons.calendar_today,
              color: white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.alarm,
              color: white,
              size: 18,
            ),
            title: Text(
              'Alarm',
              style: TextStyle(
                color: white,
              ),
            ),
            activeIcon: Icon(
              Icons.alarm,
              color: white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.assessment,
              color: white,
              size: 18,
            ),
            title: Text(
              'Guide',
              style: TextStyle(
                color: white,
              ),
            ),
            activeIcon: Icon(
              Icons.assessment,
              color: white,
              size: 30,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: [
          HomePage(),
          AddPage(),
          CalendarPage(),
          AlarmPage(),
          GuidePage(),
        ],
      ),
    );
  }
}
