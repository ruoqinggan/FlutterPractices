import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:bmi_calculator/components/calculator.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String bmiStatus;
  final String bmiRec;

  ResultPage(
      {@required this.bmi, @required this.bmiRec, @required this.bmiStatus});

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiStatus,
                      style: kBMIStatusText,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kLabelNumStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiRec,
                      style: kLabelTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            label: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
