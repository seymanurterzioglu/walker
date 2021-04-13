import 'package:flutter/material.dart';


class TravelerPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    var width=size.width;
    return Padding(
      padding: const EdgeInsets.only(left:75),
      child: Row(
        children:<Widget> [
          CircleAvatar(
            minRadius:width*0.3,
            backgroundImage: AssetImage('images/travelTheme2.jpg'),
          ),
        ],
      ),
    );
  }
}

