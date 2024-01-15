import 'package:first_test/home_screen.dart';
import 'package:first_test/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      home:  OnBoardingScreen(),
    );
  }
}


