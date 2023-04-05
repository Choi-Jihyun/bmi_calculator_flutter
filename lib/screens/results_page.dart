import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.interpretation,
    required this.resultText,
    required this.bmiResult,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT!',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE · CALCULATE',
          )
        ],
      ),
    );
  }
}
