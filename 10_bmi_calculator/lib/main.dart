import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kThemePrimaryColor,
        scaffoldBackgroundColor: kThemePrimaryColor,
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 10.0,
          ),
          thumbColor: kSliderThumbColor,
          overlayColor: kSliderThumbOverlayColor,
          activeTrackColor: Colors.white,
        ),
      ),
      home: InputPage(),
    );
  }
}
