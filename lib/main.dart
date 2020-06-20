import 'package:flutter/material.dart';

import 'data/constant.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        sliderTheme: SliderThemeData().copyWith(
          overlayColor: kSliderOverlayColor,
          activeTrackColor: Colors.white,
          thumbColor: kBottomBarColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
        ),
        appBarTheme: AppBarTheme(
          elevation: 16.0,
          centerTitle: true,
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        //'/ResultPage': (context) => ResultPage(),
      },
    );
  }
}
