import 'package:flutter/material.dart';
import 'package:login_screen/pages/homepage.dart';
import 'package:login_screen/signup.dart';
import 'first_screen.dart';
import 'package:login_screen/loadingscreen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Statusbar show or hide code
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loadingscreen(),
      routes: {
        'signup': (context) => signup(),
        'signin': (context) => homepage(),
        'firstscreen': (context) => firstscreen(),
      },
    );
  }
}
