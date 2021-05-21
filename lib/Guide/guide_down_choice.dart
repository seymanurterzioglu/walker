import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_add_page.dart';
import 'package:walker/Guide/guide_alarm_page.dart';
import 'package:walker/Guide/guide_calendar_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'file:///C:/Users/Monster/Documents/GitHub/walker/lib/Guide/guide_page.dart';


class GuideDownChoice extends StatefulWidget {
  @override
  _GuideDownChoiceState createState() => _GuideDownChoiceState();
}

class _GuideDownChoiceState extends State<GuideDownChoice> {
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
          GuidePage(),
          GuideAddPage(),
          GuideCalendarPage(),
          GuideAlarmPage(),

        ],
      ),
    );
  }
}
