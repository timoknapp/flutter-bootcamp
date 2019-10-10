import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.gender, this.height, this.weight, this.age});

  final Gender gender;
  final int height;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI is quite low, you should eat more!',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              label: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
