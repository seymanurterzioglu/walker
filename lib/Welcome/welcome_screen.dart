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
  String password = '';

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: height * 0.015),

                //Turist resmi ve hizalandirmasi

                TravelerPicture(),

                SizedBox(height: height * 0.03),

                //E-mail TextField

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: height * 0.09,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01),

                //Password TextField

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: height * 0.09,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        hintText: 'Password',
                        //errorText: 'Password is wrong',
                        suffixIcon: IconButton(
                          icon: isPasswordVisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () => setState(
                              () => isPasswordVisible = !isPasswordVisible),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: isPasswordVisible,
                      obscuringCharacter: '*',
                    ),
                  ),
                ),

                //Forgot Password

                Container(
                  alignment: Alignment(0.70, 0.1),
                  padding: EdgeInsets.only(top: 3, left: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: width * 0.04,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.015),

                //Login butonu

                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MainPage();
                        },
                      ),
                    ); //Navigator.push
                  },
                  color: white,
                  textColor: kPrimaryColor,
                ),

                SizedBox(height: height * 0.009),

                //You don't have an account?Sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "You don't have an account?",
                      style: TextStyle(color: white, fontSize: height * 0.02),
                    ),
                    GestureDetector(
                      onTap: () {
                        // go to sign up page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
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
                          fontSize: height * 0.02,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.009),

                //or -google-twitter-facebook

                OtherOption(),
              ],
            ),
          ),
        ),
      );

  }
}
