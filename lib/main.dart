import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_card_widget.dart';
import 'icon_content.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        appBarTheme: AppBarTheme(
          elevation: 16.0,
          centerTitle: true,
          brightness: Brightness.dark,
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomBarHeight = 80.0;
const cardBackgroundColor = Color(0xFF1D1F33);
const bottomBarColor = Color(0xFFEA1556);
const borderCenterCirc = 20.0;
const male = 'MALE';
const female = 'FEMALE';

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCardWidget(
                      bdColor: cardBackgroundColor,
                      customWidget:
                          CustomButtonWidget(FontAwesomeIcons.mars, male)),
                ),
                Expanded(
                  child: CustomCardWidget(
                      bdColor: cardBackgroundColor,
                      customWidget:
                          CustomButtonWidget(FontAwesomeIcons.venus, female)),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCardWidget(
                bdColor: cardBackgroundColor, borderCircular: borderCenterCirc),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomCardWidget(bdColor: cardBackgroundColor)),
                Expanded(child: CustomCardWidget(bdColor: cardBackgroundColor)),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'BalsamiqSans'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
