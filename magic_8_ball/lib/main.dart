import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(home: BallPage()),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything!'),
        backgroundColor: Colors.deepPurple[800],
      ),
      backgroundColor: Colors.indigo[500],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$ballNum.png'),
          padding: EdgeInsets.all(24.0),
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(4) + 1;
            });
          }),
    );
  }
}
