import 'package:flutter/material.dart';
import 'package:turf_flash/screens/welcome.dart';
import 'screens/home.dart';
import 'screens/splashScreen.dart';
import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      title: "Crypto Converter",
      initialRoute: splashScreen.id,
      routes: {
        splashScreen.id: (context) => splashScreen(),
        home.id: (context) => home(),
        welcome.id: (context) => welcome(),
        login.id: (context) => login(),
        register.id: (context) => register(),
      },
    ),
  );
}
