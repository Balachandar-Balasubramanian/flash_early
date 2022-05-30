import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/post.dart';

class home extends StatefulWidget {
  static String id = "home";

  @override
  State<home> createState() => _loginState();
}

class _loginState extends State<home> {
  String user = "Chandru";
  List<Image> carousel_ads = [
    Image.asset("images/ad1.jpg"),
    Image.asset("images/ad2.jpg"),
    Image.asset("images/ad3.jpg"),
    Image.asset("images/ad4.jpg"),
    Image.asset("images/ad5.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Text("Welcome"),
            Text(user),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: (() {}),
            child: Icon(
              Icons.quickreply,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: carousel_ads,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                post(),
                post(),
                post(),
                post(),
                post(),
                post(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
