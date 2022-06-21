// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';

class detail_page extends StatelessWidget {
  static String id = "detail_page";
  detail_page({
    required this.Club_name,
    required this.Captian_name,
    required this.Date,
    required this.Time,
    required this.location,
    required this.Match,
    required this.Mobile,
  });
  final String Club_name;
  final String Captian_name;
  final String Date;
  final String Time;
  final String location;
  final String Match;
  final int Mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    child: Image.asset(
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  'images/default_teamphoto.jpg',
                )),
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/default_dp.png'),
                  ),
                )
              ],
            ),
            FittedBox(
              child: Text(
                Club_name,
                style: Kfont,
              ),
            ),
            FittedBox(
              child: Text(
                Captian_name,
                style: Kfont.copyWith(fontSize: 50, color: Colors.red),
              ),
            ),
            Divider(
              height: 50,
              endIndent: 60,
              indent: 60,
              thickness: 2,
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.event_available,
                        size: 20,
                      ),
                      Text(
                        "  DATE :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        Date,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse_sharp,
                        size: 20,
                      ),
                      Text(
                        "  Time :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        Time,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        size: 20,
                      ),
                      Text(
                        "  location :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        location,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        size: 20,
                      ),
                      Text(
                        "  Match Type :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        Match,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20,
                      ),
                      Text(
                        "  Mobile num :",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        Mobile.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RoundedButton(
                title: "Call",
                colour: Colors.blueAccent,
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber(Mobile.toString());
                })
          ],
        ),
      ),
    );
  }
}
