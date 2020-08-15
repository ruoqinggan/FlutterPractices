import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 15.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconContent({@required this.iconData, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 60.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
