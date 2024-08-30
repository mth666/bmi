import 'dart:math';

class ResultLogic {
  ResultLogic({
    required this.humanweight,
    required this.humanheight,
  });

  //
  final int humanheight;
  final int humanweight;

  late double _bmi; // private value
//method to calculate BMI results. give me BMI
  String logicBMI() {
    double bmi = humanweight / pow(humanheight / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  //method to get results of BMI. Based on logicBMI data.
  String resultsBMI() {
    if (_bmi >= 25) {
      return 'OVER WEIGHT!';
    } else if (_bmi > 18.5) {
      return 'NORMAL :) ';
    } else {
      return 'UNDER WEIGHT!';
    }
  }

//method to tell what does those mean
  String realTalk() {
    if (_bmi >= 25) {
      return 'Exercise More!';
    } else if (_bmi > 18.5) {
      return 'Good Job!';
    } else {
      return 'Eat More!';
    }
  }
}
