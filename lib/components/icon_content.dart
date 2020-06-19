import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/constant.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String buttonText;

  const CustomButtonWidget(this.icon, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: FaIcon(icon),
              color: Colors.white,
              iconSize: kIconSize,
              onPressed: () {
                print("Pressed");
              }),
          SizedBox(
            height: kSizedBoxHeight,
          ),
          Text(
            buttonText,
            style: kLabelTextTransparentStyle,
          )
        ],
      ),
    );
  }
}
