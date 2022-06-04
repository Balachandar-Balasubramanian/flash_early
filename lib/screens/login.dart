import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/screens/welcome.dart';
import 'package:turf_flash/widgets/roundedbutton.dart';
import 'package:turf_flash/services/authenticate.dart';
import 'home.dart';

class login extends StatefulWidget {
  static String id = "login";

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? Email;
  String? pass;
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
              SizedBox(
                height: 20,
              ),
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
              RoundedButton(
                  title: 'Login',
                  colour: Colors.blue,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    if (Email != null && pass != null) {
                      bool t = await loginuser(Email!, pass!);
                      setState(() {
                        showSpinner = false;
                      });
                      if (t == true) {
                        Navigator.pushReplacementNamed(context, home.id);
                      } else {
                        Email = pass = null;
                        showCupertinoModalPopup<void>(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text('Alert'),
                            content: Text(login_ERROR!),
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
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
