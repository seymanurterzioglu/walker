import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
import 'package:walker/traveler_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/main_page.dart';

class TravelerSign extends StatefulWidget {
  @override
  _TravelerSignState createState() => _TravelerSignState();
}

class _TravelerSignState extends State<TravelerSign> {

   int _sliding=0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: kPrimaryColor,
        child:ListView(
          children: <Widget> [
            SizedBox(height:50),

            //Turist resmi ve hizalandırması

            TravelerPicture(),

            SizedBox(height: 30),

            //Tourist-Guide sliding(kayma)

            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CupertinoSlidingSegmentedControl(
                    padding: EdgeInsets.only(left:30,right:30,top:20,bottom:20),
                    thumbColor: white,
                    backgroundColor: Colors.white60,
                    children: {
                      0: Container(
                        padding: EdgeInsets.only(left:40,right:40,top:20,bottom:20),
                        child: Text('Tourist',style: TextStyle(fontWeight:FontWeight.bold),),
                      ),
                      1: Container(
                        padding: EdgeInsets.only(left:40,right:40,top:20,bottom:20),
                        child: Text('Guide',style: TextStyle(fontWeight:FontWeight.bold),),
                      ),

                    },
                    groupValue: _sliding,
                    onValueChanged: (newValue) {
                      setState(() {
                        _sliding = newValue;
                      });
                    }
                ),
              ),

            ),

            SizedBox(height: 180),

            RoundedButton(
              text:'Sign Up',
              press:(){
                if(_sliding==0){//Tourist main page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) {
                      return MainPage();
                    },
                  ),
                ); //Navigator.push

                }
                else{//Guide Main Page
                  /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) {
                      return MainPage();
                    },
                  ),
                ); //Navigator.push
                */
                }


              },
              color:white,
              textColor: kPrimaryColor,
            ),


          ],
        ),
      ),
    );
  }
}
