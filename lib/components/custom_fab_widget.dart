import 'package:flutter/material.dart';

import 'file:///C:/Users/iamcodder/FlutterProjects/bmi-calculator-flutter/lib/data/constant.dart';

class CustomFabButton extends StatelessWidget {
  CustomFabButton({this.iconData, this.onPressed});

  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kActiveCardColor,
      child: Icon(iconData),
      elevation: 6.0,
      onPressed: onPressed,
      splashColor: Colors.white,
      constraints: BoxConstraints(minWidth: 50.0, minHeight: 50.0),
      shape: CircleBorder(),
    );
  }
}
