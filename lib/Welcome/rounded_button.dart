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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 110),
            color: color,
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize: 20),

            ),

          ),
        ),
      ),);
  }
}