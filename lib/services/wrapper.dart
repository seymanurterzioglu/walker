import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Tourist/home_page.dart';
import '../Welcome/welcome_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<User>();
    if (user != null) {
      return HomePage();
    } else {
      return WelcomeScreen();
    }
  }
}