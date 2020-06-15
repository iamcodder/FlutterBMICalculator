import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Color bdColor;
  final double borderCircular;
  final Widget customWidget;

  const CustomCardWidget(
      {@required this.bdColor, this.borderCircular = 10, this.customWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: bdColor,
        borderRadius: BorderRadius.circular(borderCircular),
      ),
      child: customWidget,
    );
  }
}
