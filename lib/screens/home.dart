import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:turf_flash/widgets/post.dart';
import 'home_body.dart';
import 'host_body.dart';

class home extends StatefulWidget {
  static String id = "home";

  @override
  State<home> createState() => _loginState();
}

class _loginState extends State<home> {
  String user = "Chandru";
   int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    home_body(),
    host_body(),
    home_body(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        leading: Icon(
          Icons.electric_bolt,
          size: 30,
          color: Colors.yellow,
        ),
        //Hero(
        //   tag: 'logo',
        //   child: Flexible(
        //     child: Container(
        //       height: 30,
        //       child: Image.asset('images/logo.png'),
        //     ),
        //   ),
        // ),
        title: Column(
          children: [
            Text("Welcome",style: TextStyle(color: Colors.blueAccent),),
            Text(user,style: TextStyle(color: Colors.blueAccent),),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: (() {}),
            child: Icon(
              Icons.quickreply,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Host',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 4, 230, 15),
        onTap: _onItemTapped,
      ),);
  }
}
