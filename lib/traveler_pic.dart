import 'package:flutter/material.dart';
import 'package:walker/constants.dart';

class TravelerPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 75),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            minRadius: width * 0.3,
            //backgroundColor: kPrimaryColor,
            backgroundImage: AssetImage('images/travelTheme2.jpg'),
          ),
        ],
      ),
    );
  }
}
