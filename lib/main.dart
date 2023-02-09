import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Magic Ball"),
          backgroundColor: Colors.blueAccent,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ballNumber = 1;

  void changeBallFace() {
    setState(
      () {
        ballNumber = Random().nextInt(5) + 1;
      },
    );
  }

  Widget build(BuildContext context) {
    return Center(
        child: Expanded(
      child: TextButton(
        onPressed: () {
          changeBallFace();
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    ));
  }
}
