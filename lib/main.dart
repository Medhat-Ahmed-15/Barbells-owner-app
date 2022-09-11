import 'package:flutter/material.dart';
import 'package:gym_owner_app/models/memberData.dart';
import 'package:gym_owner_app/screens/loginScreen.dart';
import 'package:gym_owner_app/screens/memberPersonalDataScreen.dart';
import 'package:gym_owner_app/screens/myDashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: const Color.fromRGBO(0, 41, 88, 1),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: const TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.grey.shade900),
        ),
        fontFamily: 'Poppins',
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        MyDashboardScreen.routeName: (ctx) => MyDashboardScreen(),
        MemberPersonalDataScreen.routeName: (ctx) => MemberPersonalDataScreen(),
      },
    );
  }
}
