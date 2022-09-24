import 'package:flutter/material.dart';


import 'all_screen/first_screen.dart';
import 'all_screen/forthscreen.dart';
import 'all_screen/login_screen.dart';
import 'all_screen/screen10.dart';
import 'all_screen/screen15.dart';
import 'all_screen/screen9.dart';
import 'all_screen/second_screen.dart';
import 'all_screen/signups_creen.dart';
import 'all_screen/third_screen.dart';
import 'all_screen/tt.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes:
      {
        "SecondScreen":(context) => SecondScreen(),
        "ThirdScreen":(context) => ThirdScreen(),
        "LoginScreen":(context) => LoginScreen(),
        "SignUpScreen":(context) => SignUpScreen(),
        "VisitScreen":(context) => VisitScreen(),
        "ChoseScreen":(context) => ChoseScreen(),
        "ForthScreen":(context) => ForthScreen(),
        "TT":(context) => TT(),
        "Screen15":(context) => Screen15(),
      },
    );
  }
}

