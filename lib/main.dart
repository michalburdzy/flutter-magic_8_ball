import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: MagicBall(),
    )),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  static int getRandomNumber() {
    return Random().nextInt(5) + 1;
  }

  int answerNumber = getRandomNumber();
  setBallState() {
    setState(() {
      answerNumber = getRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('assets/ball$answerNumber.png'),
          onPressed: () {
            setBallState();
          },
        ),
      ),
    );
  }
}
