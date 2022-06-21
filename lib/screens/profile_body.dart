import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turf_flash/constants.dart';
import 'package:turf_flash/widgets/post.dart';
import 'package:turf_flash/services/post_stream.dart';

import '../services/authenticate.dart';

class profile_body extends StatefulWidget {
  @override
  State<profile_body> createState() => _profileState();
}

class _profileState extends State<profile_body> {
  String user_name = '';
  String user_email = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User? current_user = getCurrentUser();
    user_name = current_user!.displayName!;
    user_email = current_user.email!;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6)),
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
                  Text(
                    user_name,
                    style: Klogo.copyWith(
                        fontSize: 30, color: Colors.purpleAccent),
                  ),
                  Text(
                    user_email,
                    style:
                        Klogo.copyWith(fontSize: 20, color: Colors.redAccent),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        width: 80,
                        child: Center(
                          child: Text("Edit Profile"),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 8),
            child: Text(
              "My Games",
              style: Klogo.copyWith(fontSize: 40),
            ),
          ),
          PostsStream(isMe: true),
        ],
      ),
    );
  }
}
