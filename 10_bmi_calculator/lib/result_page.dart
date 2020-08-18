import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_container.dart';

class ResultPage extends StatelessWidget {
  
  double bmiValue;
  
  ResultPage({int age, int height, int weight}) {
    bmiValue = (weight.toDouble() /
        ((height.toDouble() / 100) * (height.toDouble() / 100)));

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'normal',
                    style: kBMIStatusText,
                  ),
                  Text(
                    '$bmiValue',
                    style: kLabelNumStyle,
                  ),
                  Text(
                    'You have a xxxxx body weight.',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: BottomContainer(
              label: 'RECALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
