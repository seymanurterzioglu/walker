import 'package:flutter/material.dart';
import 'package:walker/constants.dart';

class TravelerPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left:70),
      child: Row(
        children:<Widget> [
          CircleAvatar(
            minRadius:150.0,
            //backgroundColor: kPrimaryColor,
            backgroundImage: AssetImage('images/travelTheme2.jpg'),
          ),
        ],
      ),
    );
  }
}

