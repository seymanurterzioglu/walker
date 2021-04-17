import 'package:flutter/material.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/Widgets/constants.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password"),
        backgroundColor: kPrimaryColor,
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.07),

              //Forgot Password Text
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: width * 0.08,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: height*0.01),

              //Message
              Padding(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: Text(
                  "Don't worry, this will only cost a second. "
                      "Tell us  your email address so we can send you a link back to your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:white,
                    fontSize: width*0.037,
                  ),
                ),
              ),

              SizedBox(height: height*0.01),

              //Forgot Image
              Container(
                height: height * 0.3,
                width: width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/forgot2.png'),
                  ),
                ),
              ),

              SizedBox(height: height*0.02),

              //Email TextField
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

              //Send Button
              RoundedButton(
                text: "SEND",
                press: () {},
                color: white,
                textColor: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
