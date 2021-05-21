import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walker/Welcome/welcome_screen.dart';
import 'package:walker/Widgets//constants.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding:EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ad Soyad"), accountEmail: Text("example@gmail.com"),
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child:Image.network(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                    fit: BoxFit.cover,
                  )
              ),
            ),

          ),
          //Side Navigation Drawer kısmındaki bilgiler
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Profiles'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text('Filter'),
            onTap: () => null,
          ),

          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () =>  Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context) {
                  return WelcomeScreen();
                },
              ),
            ), //Navigator.push,
          ),
        ],
      ),
    );
  }
}