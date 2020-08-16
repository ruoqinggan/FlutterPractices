import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: Text('I am Super Rich!!'),
          backgroundColor: Colors.cyan[800],
        ),
        body: Center(
          child: Image(image: AssetImage('images/bismuth.jpg')),
        ),
      ),
    ),
  );
}
