import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card_layout.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'button_card_layout.dart';
import 'bottom_container.dart';

enum Gender {
  nonbi,
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 160;
  int weight = 80;
  int age = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.nonbi;
                      });
                    },
                    cardColor: selectedGender == Gender.nonbi
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCardLayout(
                      iconData: FontAwesomeIcons.laugh,
                      label: 'NON-BINARY',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCardLayout(
                      iconData: FontAwesomeIcons.smileWink,
                      label: 'FEMALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCardLayout(
                      iconData: FontAwesomeIcons.grinStars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kLabelNumStyle,
                      ),
                      Text(
                        ' CM',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    min: 120.0,
                    max: 250.0,
                    divisions: 130,
                    value: height.toDouble(),
                    inactiveColor: kLabelTextColor,
                    onChanged: (double value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: ButtonCardLayout(
                      label: 'WEIGHT',
                      unit: ' KG',
                      value: weight,
                      onPressOne: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onPressTwo: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: ButtonCardLayout(
                      label: 'AGE',
                      unit: '',
                      value: age,
                      onPressOne: () {
                        setState(() {
                          age--;
                        });
                      },
                      onPressTwo: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/first');
            },
            child: BottomContainer(
              label: 'CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
