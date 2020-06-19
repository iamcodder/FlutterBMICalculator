import 'package:bmi_calculator/Enums/gender.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'file:///C:/Users/iamcodder/FlutterProjects/bmi-calculator-flutter/lib/components/icon_content.dart';
import 'file:///C:/Users/iamcodder/FlutterProjects/bmi-calculator-flutter/lib/data/constant.dart';

import '../components/custom_card_widget.dart';
import '../components/custom_fab_widget.dart';
import '../components/custom_slider_widget.dart';
import '../data/user_info.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  double sliderValue = 180;
  String textNumber = '180';
  int weight = 90;
  int age = 80;

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
                    style: kLabelTextTransparentStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        textNumber,
                        style: kNumberTextNormalStyle,
                      ),
                      Text(
                        kCmtTitle,
                        style: kLabelTextTransparentStyle,
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
                        textNumber = '${sliderValue.toInt()}';
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
                  child: CustomCardWidget(
                    bdColor: kInactiveCardColor,
                    customWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(kWeightTitle, style: kLabelTextTransparentStyle),
                        Text('${weight.toString()}',
                            style: kNumberTextNormalStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomFabButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight > 1 && weight < 200) weight--;
                                });
                              },
                            ),
                            CustomFabButton(
                                iconData: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0 && weight < 199) weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: CustomCardWidget(
                        bdColor: kInactiveCardColor,
                        customWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(kAgeTitle, style: kLabelTextTransparentStyle),
                            Text('${age.toString()}',
                                style: kNumberTextNormalStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomFabButton(
                                  iconData: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 1 && age < 150) age--;
                                    });
                                  },
                                ),
                                CustomFabButton(
                                  iconData: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0 && age < 149) age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ))),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              UserInfo userInfo = UserInfo(sliderValue, weight);
              String weightType = userInfo.weightType();
              String bmi = userInfo.bmi();
              String weightRange = userInfo.weightRange();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ResultPage(weightType, bmi, weightRange)));
            },
            child: Container(
              color: kBottomBarColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: KBottomBarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kBottomCalculate,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'BalsamiqSans',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
