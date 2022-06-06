import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';

class detail_page extends StatelessWidget {
  static String id = "detail_page";
  //const detail_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text(
            "Argentina FC",
            style: Kfont,
          )
        ],
      ),
    );
  }
}
