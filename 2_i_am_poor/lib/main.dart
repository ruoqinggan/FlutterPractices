import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('I am So Poor Now!!'),
          backgroundColor: Colors.pink[400],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        )),
  ));
}
