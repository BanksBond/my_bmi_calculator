import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/constants.dart';
import 'package:my_bmi_calculator/components/reusable_content.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiText, required this.resultText, required this.interpretation});

  final String? bmiText;
  final String interpretation;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () { Navigator.pop(context); }, title: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}

