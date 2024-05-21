import 'package:edulexia/pages/LandingPage.dart';
import 'package:edulexia/pages/WelcomePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      home: WelcomeScreen()
    );
  }
}