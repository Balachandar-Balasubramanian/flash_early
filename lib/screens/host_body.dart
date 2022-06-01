import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';

class host_body extends StatefulWidget {
  @override
  State<host_body> createState() => _host_bodyState();
}

class _host_bodyState extends State<host_body> {
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
                //pass = value;
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
                //pass = value;
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
                //pass = value;
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
                //pass = value;
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
                //pass = value;
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter Nearby Turf",
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
                    color: Colors.blueAccent,
                    elevation: 5,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 30,
                      child: Text(
                        "5's",
                        style: Kfont.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.blueAccent,
                    elevation: 5,
                    child: MaterialButton(
                      onPressed: () {},
                      height: 30,
                      child: Text(
                        "7's",
                        style: Kfont.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.blueAccent,
                    elevation: 5,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
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
              title: 'Host', colour: Colors.blueAccent, onPressed: () {})
        ],
      ),
    );
  }
}
