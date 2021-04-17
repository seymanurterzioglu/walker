import 'package:flutter/material.dart';
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
        title: Text("Calendar"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
     body: TableCalendar(
       firstDay: DateTime.utc(2010, 10, 16),
       lastDay: DateTime.utc(2030, 3, 14),
       focusedDay: DateTime.now(),

       selectedDayPredicate: (day) {
         return isSameDay(_selectedDay, day);
       },
       onDaySelected: (selectedDay, focusedDay) {
         setState(() {
           _selectedDay = selectedDay;
           _focusedDay = focusedDay; // update `_focusedDay` here as well
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
