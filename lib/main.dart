import 'package:flutter/material.dart';
import 'package:travelUI/screens/nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFf0f5f9),
        primaryColor: Color(0xFF316bff),
      ),
      home: NavScreen(),
    );
  }
}
