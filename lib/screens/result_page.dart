import 'package:bmi_calculator/components/custom_card_widget.dart';
import 'package:bmi_calculator/components/custom_text_with_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.weightType, this.bmi, this.weightRange) {
    if (bmi > 0 && bmi < 18.5) textColor = Colors.orangeAccent;
    if (bmi >= 18.5 && bmi < 25) textColor = Colors.green;
    if (bmi >= 25 && bmi < 30) textColor = Colors.orange;
    if (bmi >= 30 && bmi < 35) textColor = Colors.deepOrangeAccent;
    if (bmi >= 35 && bmi < 45) textColor = Colors.deepOrange;
    if (bmi >= 45) textColor = Colors.red;
  }

  final String weightType;
  final double bmi;
  final String weightRange;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppBarTitle),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Text(
              kResult,
              style: kNumberTextNormalStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(width: 10.0),
                  Expanded(
                    child: CustomCardWidget(
                      bdColor: kResultCardColor,
                      customWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextWithColor(textColor, weightType),
                          Text(bmi.toStringAsFixed(1),
                              style: kNumberTextBigStyle),
                          DoubleText(weightType, weightRange),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                      kBottomReCalculate,
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
      ),
    );
  }
}

class DoubleText extends StatelessWidget {
  DoubleText(this.bmiType, this.bmiRange);

  final String bmiType;
  final String bmiRange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('$bmiType BMI Range:', style: kLabelTextTransparentStyle),
          SizedBox(height: 5.0),
          Text('$bmiRange $kKgMt', style: kLabelTextWhiteStyle),
        ],
      ),
    );
  }
}
