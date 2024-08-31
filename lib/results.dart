import 'package:bmi/constants_stuffs.dart';
//import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';
import 'custom_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiTextDetail;

  //constructor initializations
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.bmiText,
      required this.bmiTextDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text('Your Results', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
              mycolor: kActiveColor,
              customCard: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Result Title 1
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  //BMI reading
                  Text(
                    bmiText,
                    style: kBMITextStyle,
                  ),
                  //Result Details
                  Text(
                    bmiTextDetail,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
