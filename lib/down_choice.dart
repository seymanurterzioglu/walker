import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
//import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.brown,
          color: Colors.black,
          items:[
            TabItem(icon: Icons.home,title:'Home'),
            TabItem(icon: Icons.date_range,title:'Calendar'),
            TabItem(icon: Icons.add_circle),
            TabItem(icon: Icons.notifications_none,title:'Notification'),
            TabItem(icon: Icons.account_circle,title:'Profile'),
          ]
      ),
        /* bottomNavigationBar: BottomNavigationBar(
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

      ),*/

    );
  }
}

