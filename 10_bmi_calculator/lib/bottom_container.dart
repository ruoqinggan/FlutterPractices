import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {
  final String label;

  BottomContainer({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
