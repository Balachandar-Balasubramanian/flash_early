import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/services/authenticate.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';
import 'home.dart';

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
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
            child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                    height: 200, child: Image.asset('images/logo.png')),
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
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  if (username != null &&
                      Email != null &&
                      pass != null &&
                      rpass != null) {
                    bool t = await signup(username!, Email!, pass!);

                    if (t == true) {
                      setState(() {
                        showSpinner = false;
                      });
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content: Text("Successfully Registered "),
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
                      //Navigator.pushNamed(context, home.id);
                    } else {
                      setState(() {
                        showSpinner = false;
                      });
                      username = pass = rpass = Email = null;
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content: Text(register_ERROR!),
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
                    setState(() {
                      showSpinner = false;
                    });

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
      ),
    );
  }
}
