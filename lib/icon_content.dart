import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              iconSize: 80.0,
              onPressed: () {
                print("Pressed");
              }),
          SizedBox(
            height: 15.0,
          ),
          Text(
            buttonText,
            style: TextStyle(fontSize: 18.0, color: Color(0xFF878A96)),
          )
        ],
      ),
    );
  }
}
