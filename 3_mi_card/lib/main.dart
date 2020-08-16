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
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ruoqing.jpg'),
              ),
              Text(
                'Ruoqing Gan',
                style: TextStyle(
                  fontFamily: 'ArchitectsDaughter',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 6.5,
                  fontSize: 20.0,
                  color: Colors.lightGreen.shade50,
                ),
              ),
              SizedBox(
                height: 15.0,
                width: 200.0,
                child: Divider(
                  color: Colors.lime[500],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 35.0,
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone_in_talk,
                    size: 25.0,
                    color: Colors.lime[600],
                  ),
                  title: Text(
                    '(650) 772 1006',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 35.0,
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.lime[600],
                  ),
                  title: Text(
                    'ganruoqing1995@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
