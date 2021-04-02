import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/Welcome/signup_screen.dart';
import 'package:walker/traveler_pic.dart';
import 'package:walker/main_page.dart';
import 'package:walker/other_option.dart';

//Uygulama ilk ekran

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String password='';

  bool isPasswordVisible=true;


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return MaterialApp(

      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body:ListView(
          children:<Widget>[

            SizedBox(height:20),

            //Turist resmi ve hizalandirmasi
            TravelerPicture(),

            SizedBox(height: 40),

            //E-mail TextField
            Padding(
              padding: const EdgeInsets.only(left:30, right: 30,),
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

            SizedBox(height: 20),


            //Password TextField
            Padding(
              padding: const EdgeInsets.only(left:30, right: 30,),
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

            SizedBox(height:10),

            //Forgot Password

            Container(
              alignment: Alignment(0.75,0.1),
              padding: EdgeInsets.only(top:15,left:20),
              child: InkWell(
                onTap: (){} ,
                child: Text(
                  'Forgot Password',
                   style:TextStyle(
                     color: white,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Montserrat',
                     fontSize: 17,
                     decoration: TextDecoration.underline,
                   ),
                ),
              ),
            ),

            SizedBox(height:20),


            //Login butonu
            RoundedButton(
              text:"LOGIN",
              press: (){
                //e-mail sifre kontrol edilip buradan anasayfaya giriş yapılacak

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context) {
                            return MainPage();
                          },
                      ),
                    ); //Navigator.push

              },
              color:white,
              textColor: kPrimaryColor,
            ),


            //You don't have an account?Sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  "You don't have an account?",
                  style: TextStyle(color:white),
                ),
                GestureDetector(
                  onTap: () {

                    // buradan Sign up sayfasına gidilecek

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) {
                          return SignUpScreen();
                        },
                      ),
                    ); //Navigator.push
                  },

                  child: Text(
                    "Sign Up!",
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            //or -google-twitter-facebook

            OtherOption(),

          ],
        ),
      ),);
  }
}