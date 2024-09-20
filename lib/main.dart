import 'package:firebase_core/firebase_core.dart' show Firebase, FirebaseOptions;
import 'package:flutter/material.dart';
import 'package:myapp/src/welcome_page/sliding_page.dart';

 // Import your login page

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();// Initialize Firebase
  await Firebase.initializeApp(
  options: const FirebaseOptions(
    apiKey: 'AIzaSyAtll74ilouWweZ2Wey-8d6LXNDWY-ckA4',
    appId: '1:1008417808323:android:715470acfe3467c4566776',
    messagingSenderId: '1008417808323',
    projectId: 'extrack-6fd74',
    storageBucket: 'extrack-6fd74.appspot.com',
  )
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SlidePage(), // Start with the login page
    );
  }
}
