import 'package:flutter/material.dart';
import 'package:walker/Tourist/add_page.dart';
import 'package:walker/Tourist/alarm_page.dart';
import 'package:walker/Tourist/calendar_page.dart';
//import 'package:walker/Pages/guide_page.dart';
import 'package:walker/Tourist/home_page.dart';
import 'package:walker/Widgets/constants.dart';

class DownChoice extends StatefulWidget {
  @override
  _DownChoiceState createState() => _DownChoiceState();
}

class _DownChoiceState extends State<DownChoice> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap:(int newIndex) {
          setState(() {
            index=newIndex;

          });
        },
        backgroundColor: kPrimaryColor,
        type:BottomNavigationBarType.fixed,

        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 18),
        selectedItemColor: Colors.red,
            items: [
              BottomNavigationBarItem(
             icon: new Icon(Icons.home,color:white,size: 18,),
            label: 'Home',
            activeIcon: Icon(Icons.home,
            color:white,
            size: 30,
            ),
             ),

               BottomNavigationBarItem(
             icon: new Icon(Icons.add,color:white,size: 18,),
            label:'Add',
            activeIcon: Icon(Icons.add,
            color:white,
            size: 30,
            ),
             ),

               BottomNavigationBarItem(
             icon: new Icon(Icons.calendar_today,color:white,size: 18,),
            label:'Calendar',
            activeIcon: Icon(Icons.calendar_today,
            color:white,
            size: 30,
            ),
             ),

               BottomNavigationBarItem(
             icon: new Icon(Icons.alarm,color:white,size: 18,),
            label:'Alarm',
            activeIcon: Icon(Icons.alarm,
            color:white,
            size: 30,
            ),
             ),

              /*
               BottomNavigationBarItem(
             icon: new Icon(Icons.assessment, color:white,size: 18,),
            label: 'Guide',
            activeIcon: Icon(Icons.assessment,
            color:white,
            size: 30,
            ),
             ),

               */
            ], 
            
      ),
      body: IndexedStack(
       index: index,
        children: [
          HomePage(),
          AddPage(),
          CalendarPage(),
          AlarmPage(),
          //GuidePage(),
        ],
      ),
    );
  }
}