import 'dart:async';

import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Helper.toScreen(context, LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Rectangle 56.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset(
              "assets/image 3 (2).png",
              height: 68,
            ),
          ),
        ),
      ),
    );
  }
}
