import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:walker/Welcome/welcome_screen.dart';
import 'package:walker/services/authentication_service.dart';
import 'package:walker/services/wrapper.dart';

import '../Welcome/welcome_screen.dart';
import 'constants.dart';
//import 'package:walker/Widgets/navigation_drawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign in',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: AnimatedSplashScreen(
          splash: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Image.asset("images/travelTheme2.jpg")),
          nextScreen: WelcomeScreen(),
          splashTransition: SplashTransition.rotationTransition,
          splashIconSize: 200,
          backgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
