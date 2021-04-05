import 'package:flutter/material.dart';


//LOGIN , SIGN UP, NEXT button class

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color,textColor;


  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height*0.0001),
      child:Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: height*0.02 ,horizontal: width*0.25),
            color: color,
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: width*0.06),
            ),

          ),
        ),
      ),);
  }
}