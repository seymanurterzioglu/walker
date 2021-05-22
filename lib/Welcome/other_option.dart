import 'package:flutter/material.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class OtherOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.02),
      //width: width*0.8,
      child: Column(
        children: <Widget>[
          //-----or------
          Row(
            children: <Widget>[
              buildDivider(),
              Text(
                "OR",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              buildDivider(),
            ],
          ),

          SizedBox(height: height * 0.005),

          //facebook-twitter-google
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: todo
              // TODO: flutter_signin_button: ^2.0.0  eklendi
              SizedBox(width: width * 0.005),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
  //   ---------------  method

  Expanded buildDivider() {
    return Expanded(
      child: Center(
        child: Divider(
          color: white,
          height: 1.0,
        ),
      ),
    );
  }
} //Other Option class finish
