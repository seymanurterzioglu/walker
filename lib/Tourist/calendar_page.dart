import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Tourist Calendar"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[
          IconButton(   //  // guide sayfasına gidecek, appbarda iconbutton
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
      body: TableCalendar(
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        focusedDay: DateTime.now(),
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
