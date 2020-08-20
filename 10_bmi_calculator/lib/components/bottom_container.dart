import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainer extends StatelessWidget {
  final String label;
  final Function onTap;

  BottomContainer({@required this.label, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(top: 15.0),
        color: kBottomContainerColor,
        child: Text(
          label,
          style: kBottomContainerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
