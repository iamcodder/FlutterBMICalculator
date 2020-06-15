import 'package:flutter/material.dart';

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
                CustomCard(bdColor: cardBackgroundColor),
                CustomCard(bdColor: cardBackgroundColor),
              ],
            ),
          ),
          CustomCard(bdColor: cardBackgroundColor),
          Expanded(
            child: Row(
              children: [
                CustomCard(bdColor: cardBackgroundColor),
                CustomCard(bdColor: cardBackgroundColor),
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

class CustomCard extends StatelessWidget {
  final Color bdColor;

  const CustomCard({@required this.bdColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bdColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
