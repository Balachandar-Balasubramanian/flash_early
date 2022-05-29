import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';
import 'login.dart';
import 'register.dart';

class welcome extends StatefulWidget {
  static String id = "welcome";

  @override
  State<welcome> createState() => _loginState();
}

class _loginState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'lego',
                child: Container(
                  height: 80,
                  child: Image.asset("images/logo.png"),
                ),
              ),
              TyperAnimatedTextKit(
                speed: Duration(milliseconds: 60),
                text: ["Turf Flash  "],
                textStyle: Klogo,
              )
              // Text(
              //   "Turf Flash",
              //   style: Klogo.copyWith(fontSize:70,),
              // )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          RoundedButton(
              title: "Log in ",
              colour: Colors.lightBlue,
              onPressed: () {
                Navigator.pushNamed(context, login.id);
              }),
          RoundedButton(
              title: "Sign Up",
              colour: Colors.lightBlue,
              onPressed: () {
                Navigator.pushNamed(context, register.id);
              }),
        ],
      ),
    );
  }
}
