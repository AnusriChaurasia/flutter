import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/signin.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome 1',
      debugShowCheckedModeBanner: false,
      home: SignIn(
    
      ),

    );
    
  }
}

