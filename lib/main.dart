import 'package:flutter/material.dart';
import 'package:turf_flash/screens/welcome.dart';
import 'screens/home.dart';
import 'screens/splashScreen.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      title: "Turf Flash",
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
