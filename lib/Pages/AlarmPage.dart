import 'package:flutter/material.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';

 class AlarmPage extends StatefulWidget {
   @override
   _AlarmPageState createState() => _AlarmPageState();
 }
 
 class _AlarmPageState extends State<AlarmPage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: kPrimaryColor,
       drawer: NavBar(),
       appBar: AppBar(
         title: Text("Alarm Page"),
         backgroundColor: kPrimaryColor,
         centerTitle: true,
       ),
     );
   }
 }