import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:walker/Widgets//constants.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color:Colors.white),
        backgroundColor: kPrimaryColor,
        title: Text('Settings',style: TextStyle(color:Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 8.0,
              margin: const EdgeInsets.all(8.0),
              color:kPrimaryColor,
              child:ListTile(
                title:Text("Ad Soyad",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,),),
                leading: CircleAvatar(),
                trailing: Icon(Icons.edit,color:Colors.white),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Card(
                color: kPrimaryColor,
                elevation: 8.0,
                margin: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 16.0),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.mail,color:Colors.white,),
                      title: Text("Change E-Mail"),
                      trailing:Icon(Icons.keyboard_arrow_right,color:Colors.white ,),
                      onTap: (){},
                    ),
                    Container(
                        width: double.infinity,
                        height: 1.0,
                        color:Colors.grey.shade300
                    ),
                    ListTile(
                      leading: Icon(Icons.lock_outline,color:Colors.white,),
                      title: Text("Change Password"),
                      trailing:Icon(Icons.keyboard_arrow_right,color:Colors.white),
                      onTap: (){},
                    ),
                    Container(
                        width: double.infinity,
                        height: 1.0,
                        color:Colors.grey.shade300
                    ),
                    ListTile(
                      leading: Icon(FontAwesomeIcons.language,color:Colors.white,),
                      title: Text("Change Language"),
                      trailing:Icon(Icons.keyboard_arrow_right,color:Colors.white),
                      onTap: (){},
                    ),
                    Container(
                        width: double.infinity,
                        height: 1.0,
                        color:Colors.grey.shade300
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on,color:Colors.white,),
                      title: Text("Change Location"),
                      trailing:Icon(Icons.keyboard_arrow_right,color:Colors.white),
                      onTap: (){},
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
