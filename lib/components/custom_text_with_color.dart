import 'package:bmi_calculator/data/constant.dart';
import 'package:flutter/material.dart';

class CustomTextWithColor extends StatelessWidget {
  CustomTextWithColor(this.color, this.weightType);

  final Color color;
  final String weightType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(weightType,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: color,
              fontSize: kTextFontSize30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0)),
    );
  }
}
