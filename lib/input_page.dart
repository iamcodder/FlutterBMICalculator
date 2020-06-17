import 'package:bmi_calculator/Enums/Gender.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_card_widget.dart';
import 'custom_slider_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  double sliderValue = 160;
  String textNumber = '180';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppBarTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCardWidget(
                      function: () {
                        setState(() {
                          gender = Gender.MALE;
                        });
                      },
                      bdColor: gender == Gender.MALE
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      customWidget: CustomButtonWidget(
                          FontAwesomeIcons.mars, Gender.MALE.toShortString())),
                ),
                Expanded(
                  child: CustomCardWidget(
                      function: () {
                        setState(() {
                          gender = Gender.FEMALE;
                        });
                      },
                      bdColor: gender == Gender.MALE
                          ? kInactiveCardColor
                          : kActiveCardColor,
                      customWidget: CustomButtonWidget(FontAwesomeIcons.venus,
                          Gender.FEMALE.toShortString())),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCardWidget(
              bdColor: kInactiveCardColor,
              borderCircular: kBorderCenterCirc,
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    kHeightTitle,
                    style: kLabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        textNumber,
                        style: kNumberTextStyle,
                      ),
                      Text(
                        kCmtTitle,
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  CustomSliderWidget(
                    sliderValue: sliderValue,
                    minValue: kSliderMinValue,
                    maxValue: kSliderMaxValue,
                    function: (value) {
                      setState(() {
                        sliderValue = value;
                        textNumber = '${value.toInt()}';
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
                Expanded(child: CustomCardWidget(bdColor: kInactiveCardColor)),
                Expanded(child: CustomCardWidget(bdColor: kInactiveCardColor)),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: KBottomBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kBottomBarTitle,
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
