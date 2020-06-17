import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Color bdColor;
  final double borderCircular;
  final Widget customWidget;
  final Function function;

  const CustomCardWidget(
      {@required this.bdColor,
      this.borderCircular = 10,
      this.customWidget,
      this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bdColor,
          borderRadius: BorderRadius.circular(borderCircular),
        ),
        child: customWidget,
      ),
    );
  }
}
