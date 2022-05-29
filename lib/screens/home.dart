import 'package:flutter/material.dart';

class home extends StatefulWidget {
  static String id = "home";

  @override
  State<home> createState() => _loginState();
}

class _loginState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("helo"),
    );
  }
}
