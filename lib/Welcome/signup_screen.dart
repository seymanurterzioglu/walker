import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/traveler_pic.dart';

import 'package:walker/Welcome/traveler_sign.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String password='';

  bool isPasswordVisible=true;

  bool checkBoxValue=false;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return MaterialApp(
      home:Scaffold(
        backgroundColor: kPrimaryColor,
        body:ListView(
          children: <Widget> [

            SizedBox(height:50),

            //Turist resmi ve hizalandırması

            TravelerPicture(),

            SizedBox(height: 20),

            //Name

            Padding(
              padding: const EdgeInsets.only(left:30, right: 30, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.black,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: "Name",
                  filled: true,
                  fillColor: Colors.white,
                ),


              ),
            ),

            //Email

            Padding(
              padding: const EdgeInsets.only(left:30, right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.black,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.emailAddress,

              ),
            ),

            //Password

            Padding(
              padding: const EdgeInsets.only(left:30, right: 30,bottom: 5),
              child: TextFormField(


                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.black,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Password',
                  //errorText: 'Password is wrong',
                  suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () =>
                        setState(() => isPasswordVisible =! isPasswordVisible),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: isPasswordVisible,
                obscuringCharacter: '*',
              ),
            ),

            //I would like -tik

            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Row(
                children:<Widget> [
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value)
                    {
                      print(value);
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),

                  Text(
                      "I accept all promotional information.",
                    style: TextStyle(fontSize: 15),
                  ),
                ],

              ),
            ),

            SizedBox(height: 20),

            //Next Button

            RoundedButton(

              text:"Next",

              press: (){

                //Tourist-Guide sayfası


                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context) {
                            return TravelerSign();
                          },
                      ),
                    ); //Navigator.push

              },
              color:white,
              textColor: kPrimaryColor,

            ),



          ],
        ),
      ),);
  }
}