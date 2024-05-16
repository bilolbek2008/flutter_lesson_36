import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lesson_36/pages/page1.dart';



void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: fiveminut(),
    );
  }
}

class fiveminut extends StatefulWidget {
  @override
  _fiveminutState createState() => _fiveminutState();
}

class _fiveminutState extends State<fiveminut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/image1.png",
          // fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page1()),
      );
    });
  }
}




