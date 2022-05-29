import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/services/firebase.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';

class register extends StatefulWidget {
  static String id = "register";

  @override
  State<register> createState() => _loginState();
}

class _loginState extends State<register> {
  String? username;
  String? Email;
  String? pass;
  String? rpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child:
                  Container(height: 200, child: Image.asset('images/logo.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "User Name",
              style: Klogo.copyWith(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  username = value;
                },
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Display Name",
                ),
              ),
            ),
            Text(
              "Email Address",
              style: Klogo.copyWith(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  Email = value;
                },
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "sample@gmail.com",
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Text(
              "Password",
              style: Klogo.copyWith(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  pass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Password",
                ),
              ),
            ),
            Text(
              "Confirm Password",
              style: Klogo.copyWith(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  rpass = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Re-enter Password",
                ),
              ),
            ),
            RoundedButton(
              title: 'Sign Up',
              colour: Colors.blue,
              onPressed: () {
                if (username != null &&
                    Email != null &&
                    pass != null &&
                    rpass != null) {
                  bool t = signup(username, Email, pass);
                  if (t == true) {
                    Navigator.pop(context);
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
      )),
    );
  }
}
