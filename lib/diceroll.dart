import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int dicenumber = 1;
  static var customFontWhite = GoogleFonts.coiny(
    textStyle: TextStyle(
      color: Color.fromARGB(255, 2, 0, 0),
      letterSpacing: 3,
      fontSize: 25,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 142, 122),
        title: Text(
          "Roll the Dicee ",
          style: customFontWhite,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 243, 194, 183),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                'images/dice$dicenumber.png',
                width: 200,
              ),
            ),
            Container(
              child: FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    dicenumber = Random().nextInt(6) + 1;
                  });
                },
                label: Text(
                  "Roll Again",
                  style: customFontWhite,
                ),
                icon: Icon(
                  Icons.repeat,
                  color: Colors.black,
                ),
                backgroundColor: Color.fromARGB(255, 150, 225, 244),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
