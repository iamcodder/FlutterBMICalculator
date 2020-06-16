import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const iconSize = 80.0;
const sizedBoxHeight = 15.0;
const textFontSize = 18.0;
const textBackColor = Color(0xFF878A96);

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
              color: textBackColor,
              iconSize: iconSize,
              onPressed: () {
                print("Pressed");
              }),
          SizedBox(
            height: sizedBoxHeight,
          ),
          Text(
            buttonText,
            style: TextStyle(fontSize: textFontSize, color: textBackColor),
          )
        ],
      ),
    );
  }
}
