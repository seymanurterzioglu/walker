import 'package:flutter/material.dart';
import 'package:walker/constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class  OtherOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.02),
      //width: width*0.8,
      child: Column(
        children: <Widget>[

          //-----or------
          Row(
            children: <Widget> [
              buildDivider(),
              Text(
                "OR",
                style: TextStyle(
                  color:white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              buildDivider(),

            ],
          ),

          SizedBox(height: height*0.005),

          //facebook-twitter-google
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [

              // TODO: flutter_signin_button: ^2.0.0  eklendi
              SignInButton(
                Buttons.Google,
                // Google mini modu desteklemiyor
                onPressed: () {},
              ),
              SizedBox(width: width*0.010),
              SignInButton(
                Buttons.Facebook,
                mini: true,
                onPressed: () {},
              ),
              SizedBox(width: width*0.010),
              SignInButton(
                Buttons.Twitter,
                mini: true,
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
}  //Other Option class finish

/*
class  SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;

  const SocialIcon({
    Key key,
    this.iconSrc,
    this.press,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white70,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          minRadius: 20,
         backgroundColor: kPrimaryColor,
         backgroundImage: AssetImage(iconSrc),
        ),
      ),
    );
  }
}
*/

/*

              GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(

                      //scale:10,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      image: AssetImage("icons/facebook.png"),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.white70,

                    ),

                    shape: BoxShape.circle,
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                    border: Border.all(
                      width: 0.5,
                      color: Colors.white70,
                    ),
                    shape: BoxShape.circle,

                  ),
                  child: CircleAvatar(
                    minRadius: 20,
                    backgroundColor: kPrimaryColor,
                    backgroundImage: AssetImage("icons/twitter.png"),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.white70,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    minRadius: 20,
                    backgroundColor: kPrimaryColor,
                    backgroundImage: AssetImage("icons/google-plus.png"),
                  ),
                ),
              ),



 */