import 'package:demo/login_page.dart';
import 'package:demo/onboarding_screen.dart';
import 'package:demo/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: OnBoardingScreen());
  }
}
