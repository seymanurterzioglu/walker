import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_main_page.dart';
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
         title: Text("Tourist Alarm"),
         backgroundColor: kPrimaryColor,
         centerTitle: true,
         // guide sayfasına gidecek, appbarda iconbutton
         actions:<Widget>[
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