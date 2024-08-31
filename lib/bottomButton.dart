import 'package:flutter/material.dart';
import 'constants_stuffs.dart';

class CalculateButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  //y;final VoidCallback onTap;

  CalculateButton({
    super.key,
    // required this.humanweight,
    //required this.humanheight,
    required this.onTap,
    required this.buttonTitle,
  });

  // final int humanweight;
  //final int humanheight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      // () {
      // ResultLogic r =
      //     ResultLogic(humanweight: humanweight, humanheight: humanheight);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const ResultsPage(
      //       bmiResult: '',
      //       resulTexts: '',
      //       realTalk: '',
      //     ),
      //   ),
      // );
      // },
      child: Container(
        color: const Color(0xFFEB1555),
        width: double.infinity,
        height: 88,
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.only(bottom: 12),
        child: Center(
          child: Text(
            buttonTitle,
            style: kBigButton,
          ),
        ),
      ),
    );
  }
}
