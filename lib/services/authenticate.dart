import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;
var _loggedinUser ;

Future<bool> signup(String displayname, String emailid, String password) async {

  try {
  print(displayname);
  print(emailid);
  print(password);
  var newuser = await _auth.createUserWithEmailAndPassword(email: emailid, password: password);
  print(newuser);
  return true;
} on Exception catch (e) {
  return false;
  print(e);
  // TODO
}

}

bool loginuser(String? emailid, String? password) {
  return true;
}

getCurrentUSer(){
  try {
  final user=_auth.currentUser;
  if(user!=null){
    _loggedinUser=user;
    print(_loggedinUser.email);
  }
} on Exception catch (e) {
  print(e);
}
}