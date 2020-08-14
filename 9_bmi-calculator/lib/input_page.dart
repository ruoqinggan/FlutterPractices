import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

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
  // Color nonbiCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // Color maleCardColor = inactiveCardColor;

  // void updateColor(Gender gender) {
  //   // nonbi card pressed
  //   if (gender == Gender.nonbi) {
  //     if (nonbiCardColor == inactiveCardColor) {
  //       nonbiCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       nonbiCardColor = inactiveCardColor;
  //     }
  //   }

  //   // female card pressed
  //   if (gender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       nonbiCardColor = inactiveCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }

  //   if (gender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       nonbiCardColor = inactiveCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.nonbi;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.nonbi
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        iconData: FontAwesomeIcons.laugh,
                        label: 'NON-BINARY',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        iconData: FontAwesomeIcons.smileWink,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        iconData: FontAwesomeIcons.grinStars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
