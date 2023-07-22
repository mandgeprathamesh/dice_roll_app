import 'package:dice_roll_app/diceroll.dart';
import 'package:dice_roll_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Generator',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: SplashScreen(),
    );
  }
}
