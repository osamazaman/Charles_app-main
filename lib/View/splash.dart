import 'package:charles_app/View/Homepage/Home.dart';
import 'package:charles_app/View/IntroPages/introPages.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 4200),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => IntroPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/splash.gif'),
            fit: BoxFit.cover,
          )
      ),

    );
  }
}
