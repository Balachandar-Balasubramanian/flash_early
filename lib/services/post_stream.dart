import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turf_flash/screens/home_body.dart';
import 'package:turf_flash/widgets/post.dart';

import 'authenticate.dart';

class PostsStream extends StatelessWidget {
  User? current_user = getCurrentUser();
  PostsStream({@required isMe}) {
    isMy = isMe;
  }
  bool? isMy;

  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('posts').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something Went Wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CupertinoActivityIndicator(
              radius: 30.0,
            ),
          );
        }
        final data = snapshot.requireData;
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.size,
          itemBuilder: (context, index) {
            print(isMy);
            if (data.docs[index]['host_email'] != current_user!.email! &&
                isMy == false) {
              print(isMy);
              return post(
                location: data.docs[index]['location'],
                Mobile: data.docs[index]['contact number'],
                Time: data.docs[index]['time'],
                Match: data.docs[index]['match type'],
                Club_name: data.docs[index]['club name'],
                Captian_name: data.docs[index]['captian name'],
                Date: data.docs[index]['Date'],
              );
            }
            if (data.docs[index]['host_email'] == current_user!.email! &&
                isMy == true) {
              print(isMy);
              return post(
                location: data.docs[index]['location'],
                Mobile: data.docs[index]['contact number'],
                Time: data.docs[index]['time'],
                Match: data.docs[index]['match type'],
                Club_name: data.docs[index]['club name'],
                Captian_name: data.docs[index]['captian name'],
                Date: data.docs[index]['Date'],
              );
            }
            return Container();
          },
        );
      },
    );
  }
}
