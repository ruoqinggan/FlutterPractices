import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'round_icon_button.dart';

class ButtonCardLayout extends StatelessWidget {
  final String label;
  final int value;
  final String unit;
  final Function onPressOne;
  final Function onPressTwo;

  ButtonCardLayout(
      {this.label,
      this.unit,
      this.value,
      @required this.onPressOne,
      @required this.onPressTwo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              '$value',
              style: kLabelNumStyle,
            ),
            Text(
              unit,
              style: kLabelTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: onPressOne,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: onPressTwo,
            ),
          ],
        )
      ],
    );
  }
}
