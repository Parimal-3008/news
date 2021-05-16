import 'package:flutter/material.dart';
import 'package:news/Home.dart';

//import 'package:firebase_auth/firebase_auth.dart';
void main() async {
 
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
