import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';

class host_body extends StatefulWidget {

  @override
  State<host_body> createState() => _host_bodyState();
}

class _host_bodyState extends State<host_body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          // borderRadius: BorderRadius.circular(10.0),
          elevation: 5,
          child: Container(
          height: 120,
          width: double.infinity,
          child: Center(
            child: Text("HOST YOUR GAME!",style: Kfont.copyWith(color: Color.fromARGB(255, 4, 230, 15),fontSize: 30),),
          ),
          ),
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Club Name",style: Klogo,),
        ),
        Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  //pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  //pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  //pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  //pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  //pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
      ],
    );
  }
}