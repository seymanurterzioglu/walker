import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walker/Welcome/forgot_password.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/Welcome/signup_screen.dart';
import 'package:walker/Widgets/traveler_pic.dart';
import 'package:walker/Tourist/main_page.dart';
import 'package:walker/Welcome//other_option.dart';
import 'package:walker/services/authentication_service.dart';

//Uygulama ilk ekran

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String password = '';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;
  final authMethods = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          centerTitle: true,
          title: Text("Login"),
          backgroundColor: kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[


          //Turist resmi ve hizalandirmasi

          TravelerPicture(),

          SizedBox(height: height * 0.03),

          //E-mail TextField

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: height * 0.09,
              child: TextField(
                controller: emailController,
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
                controller: passwordController,
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
                    onPressed: () =>
                        setState(() => isPasswordVisible = !isPasswordVisible),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPassword();
                    },
                  ),
                ); //Navigator.push
              },
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
          RoundedButton(
            text: "LOGIN with Google",
            press: () {
              authMethods.signInWithGoogle(context);
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
    );
  }
}
