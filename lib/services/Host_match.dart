import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turf_flash/screens/home_body.dart';
import 'package:turf_flash/widgets/post.dart';

bool host(String Club, String Captian, String Date, String time,
    String location, int num, String match_type, String host_email) {
  try {
    CollectionReference posts = FirebaseFirestore.instance.collection('posts');
    posts.add({
      "Date": Date,
      "captian name": Captian,
      "club name": Club,
      "contact number": num,
      "host_email": host_email,
      "location": location,
      "match type": match_type,
      "time": time
    });
    return true;
  } on Exception catch (e) {
    return false;
    // TODO
  }
}
