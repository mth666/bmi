import 'package:bmi/constants_stuffs.dart';
import 'package:flutter/material.dart';
import 'constants_stuffs.dart';
import 'custom_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resulTexts;
  final String realTalk;

  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resulTexts,
      required this.realTalk});

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
              child: const Text('Your Results', style: kLabelTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
