import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String? register_ERROR;
String? login_ERROR;
final _auth = FirebaseAuth.instance;
User? _loggedinUser;
Future<bool> signup(String displayname, String emailid, String password) async {
  try {
    print(displayname);
    print(emailid);
    print(password);
    var newuser = await _auth.createUserWithEmailAndPassword(
        email: emailid, password: password);
    print(newuser);
    User? current_user = getCurrentUser();
    current_user!.updateDisplayName(displayname);
    return true;
  } on FirebaseException catch (e) {
    print(e.code);
    register_ERROR = e.code;
    return false;

    // TODO
  }
}

Future<bool> loginuser(String emailid, String password) async {
  try {
    var user = await _auth.signInWithEmailAndPassword(
        email: emailid, password: password);
    return true;
  } on FirebaseException catch (e) {
    login_ERROR = e.code;
    return false;
    // TODO
  }
}

User? getCurrentUser() {
  try {
    final user = _auth.currentUser;
    if (user != null) {
      _loggedinUser = user;
      return user;
    }
  } on Exception catch (e) {
    print(e);
  }
}
