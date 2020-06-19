import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/iamcodder/FlutterProjects/bmi-calculator-flutter/lib/components/custom_card_widget.dart';

import '../data/constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.weightType, this.bmi, this.weightRange);

  final String weightType;
  final String bmi;
  final String weightRange;

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
                          Text(weightType, style: kWeightTypeStyle),
                          Text(bmi, style: kNumberTextBigStyle),
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
