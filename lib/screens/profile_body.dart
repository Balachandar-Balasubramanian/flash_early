

import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/post.dart';
class profile_body extends StatefulWidget {

  @override
  State<profile_body> createState() => _profileState();
}

class _profileState extends State<profile_body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6)),
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              // height: 250,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/default_dp.png'),
                    ),
                  ),
                  Text("CHANDRU",style: Klogo.copyWith(fontSize: 30,color: Colors.purpleAccent),),
                  Text("Sample@email.com",style: Klogo.copyWith(fontSize: 20,color: Colors.redAccent),),
                  ElevatedButton(onPressed: (){
                    
                  }, child: Container(
                    width: 80,
                    child: Center(child: Text("Edit Profile"),),
                  ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 8),
            child: Text("My Games",style: Klogo.copyWith(fontSize: 40),),
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
    );
    
  }
}