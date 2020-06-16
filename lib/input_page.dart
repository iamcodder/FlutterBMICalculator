import 'package:bmi_calculator/Enums/Gender.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_card_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomBarHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const deactiveCardColor = Color(0xFF111328);
const bottomBarColor = Color(0xFFEA1556);
const borderCenterCirc = 20.0;
const male = 'MALE';
const female = 'FEMALE';

class _InputPageState extends State<InputPage> {
  Color cardStateMale = deactiveCardColor;
  Color cardStateFemale = deactiveCardColor;

  void tiklandi(Gender gender) {
    setState(() {
      if (gender == Gender.MALE) {
        cardStateMale = activeCardColor;
        cardStateFemale = deactiveCardColor;
      } else {
        cardStateMale = deactiveCardColor;
        cardStateFemale = activeCardColor;
      }
    });
  }

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
                    child: CustomCardWidget(
                        bdColor: cardStateMale,
                        customWidget: CustomButtonWidget(FontAwesomeIcons.mars,
                            Gender.MALE.toShortString())),
                    onTap: () {
                      tiklandi(Gender.MALE);
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: CustomCardWidget(
                        bdColor: cardStateFemale,
                        customWidget: CustomButtonWidget(FontAwesomeIcons.venus,
                            Gender.FEMALE.toShortString())),
                    onTap: () {
                      tiklandi(Gender.FEMALE);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCardWidget(
                bdColor: deactiveCardColor, borderCircular: borderCenterCirc),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomCardWidget(bdColor: deactiveCardColor)),
                Expanded(child: CustomCardWidget(bdColor: deactiveCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'BalsamiqSans'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
