import 'package:flutter/material.dart';
import 'package:ttwenty_demo/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T20 World Cup',
      theme: ThemeData(
        // This is the theme of your application.

        primaryColor: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}
