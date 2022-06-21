import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/services/Host_match.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';

import '../services/authenticate.dart';

class host_body extends StatefulWidget {
  @override
  State<host_body> createState() => _host_bodyState();
}

class _host_bodyState extends State<host_body> {
  String? match_type;
  String? Club;
  String? Captian;
  String? Date;
  String? time;
  String? location;
  int? num;
  String host_email = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User? current_user = getCurrentUser();
    host_email = current_user!.email!;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Material(
            // borderRadius: BorderRadius.circular(10.0),
            elevation: 5,
            child: Container(
              height: 120,
              width: double.infinity,
              child: Center(
                child: Text(
                  "HOST YOUR GAME!",
                  style: Kfont.copyWith(
                      color: Color.fromARGB(255, 4, 230, 15), fontSize: 30),
                ),
              ),
            ),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              "Club Name",
              style: Klogo.copyWith(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                Club = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Club Name",
              ),
            ),
          ),
          Text(
            "Captian's Name",
            style: Klogo.copyWith(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                Captian = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter Captian's Name",
              ),
            ),
          ),
          Text(
            "Date",
            style: Klogo.copyWith(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                Date = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter Preferred Match Date",
              ),
            ),
          ),
          Text(
            "Time Slot",
            style: Klogo.copyWith(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                time = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter Preferred TIme slot",
              ),
            ),
          ),
          Text(
            "Location",
            style: Klogo.copyWith(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                location = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter Nearby Turf",
              ),
            ),
          ),
          Text(
            "Contact Number",
            style: Klogo.copyWith(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextFormField(
              onChanged: (value) {
                num = int.parse(value);
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Mobile Number",
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: match_type == "5s"
                        ? Colors.blue[800]
                        : Colors.blueAccent,
                    elevation: 6,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          match_type = "5s";
                        });
                      },
                      height: 30,
                      child: Text(
                        "5's",
                        style: Kfont.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: match_type == "7s"
                        ? Colors.blue[800]
                        : Colors.blueAccent,
                    elevation: 5,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          match_type = "7s";
                        });
                      },
                      height: 30,
                      child: Text(
                        "7's",
                        style: Kfont.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: match_type == "11s"
                        ? Colors.blue[800]
                        : Colors.blueAccent,
                    elevation: 5,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          match_type = "11s";
                        });
                      },
                      height: 30,
                      child: Text(
                        "11's",
                        style: Kfont.copyWith(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RoundedButton(
            title: 'Host',
            colour: Colors.blueAccent,
            onPressed: () async {
              if (Club != null &&
                  Captian != null &&
                  Date != null &&
                  time != null &&
                  location != null &&
                  num != null) {
                bool t = await host(Club!, Captian!, Date!, time!, location!,
                    num!, match_type!, host_email);
                if (t) {
                  showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const Text('Success!!'),
                      content: const Text('Your match request has been posted'),
                      actions: <CupertinoDialogAction>[
                        CupertinoDialogAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Okay'),
                        )
                      ],
                    ),
                  );
                }
              } else {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Alert'),
                    content: const Text('Please enter all fields'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Okay'),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
