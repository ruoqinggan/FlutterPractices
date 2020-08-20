import 'package:bmi_calculator/components/calculator.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_card_layout.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/button_card_layout.dart';
import 'package:bmi_calculator/components/bottom_container.dart';

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
  int height = 180;
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
                    'AGE',
                    style: kLabelTextStyle,
                  ),
                  Text(
                    age.toString(),
                    style: kLabelNumStyle,
                  ),
                  Slider(
                    min: 18.0,
                    max: 110.0,
                    divisions: 100,
                    value: age.toDouble(),
                    inactiveColor: kLabelTextColor,
                    onChanged: (double value) {
                      setState(() {
                        age = value.toInt();
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
                      label: 'HEIGHT',
                      unit: ' CM',
                      value: height,
                      onPressOne: () {
                        setState(() {
                          height--;
                        });
                      },
                      onPressTwo: () {
                        setState(() {
                          height++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(
            label: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(
                weight: weight,
                height: height,
              );

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmi: calc.calculateBMI(),
                      bmiRec: calc.getBMIRec(),
                      bmiStatus: calc.getBMIStatus(),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
