import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_container.dart';

class ResultPage extends StatelessWidget {
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'normal',
                    style: kBottomContainerText,
                  ),
                  Text(
                    '19.0',
                  ),
                  Text(
                    'You have a xxx body weight.',
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
