import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget(
      {@required this.sliderValue,
      @required this.minValue,
      @required this.maxValue,
      @required this.function});

  final double sliderValue;
  final double minValue;
  final double maxValue;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      min: minValue,
      max: maxValue,
      onChanged: function,
    );
  }
}
