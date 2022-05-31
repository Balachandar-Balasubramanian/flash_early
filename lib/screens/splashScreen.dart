import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/screens/welcome.dart';
import 'home.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  static String id = "splashScreen";

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, welcome.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        // color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "logo",
              child: Container(
                height: 400,
                child: Image.asset('images/logo.png'),
              ),
            ),
            Text(
              "Turf Flash",
              style: Klogo,

            )
          ],
        ),
      ),
    ),);
  }
}
