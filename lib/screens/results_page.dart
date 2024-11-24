import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:bmi_calculator_app/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('محاسبه گر BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'نتیجه شما',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {
                // Add your onPress functionality here
                // If no action is needed, you can leave the function body empty
              },
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
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
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'محاسبه مجدد',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
