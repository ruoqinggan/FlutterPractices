import 'package:flutter/material.dart';

// test commit
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 100.0,
                width: 100.0,
                child: Text("Container 1"),
                padding: EdgeInsets.all(25),
              ),
              Container(
                color: Colors.pink,
                height: 100.0,
                width: 100.0,
                child: Text("Container 2"),
                padding: EdgeInsets.all(25),
              ),
              Container(
                color: Colors.grey[700],
                height: 100.0,
                width: 100.0,
                child: Text("Container 3"),
                padding: EdgeInsets.all(25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
