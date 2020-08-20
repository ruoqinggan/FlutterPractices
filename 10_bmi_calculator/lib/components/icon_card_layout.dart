import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconCardLayout extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconCardLayout({@required this.iconData, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
