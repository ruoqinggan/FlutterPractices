import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location currentLocation = Location();
    await currentLocation.getCurrentLocation();
    print(currentLocation.latitude);
    print(currentLocation.longitude);
    getWeatherData();
  }

  void getWeatherData() async {
    http.Response response = await http.get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
