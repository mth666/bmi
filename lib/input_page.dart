import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/custom_icon_widget.dart';
import 'custom_card.dart';
import 'constants_stuffs.dart';

enum Gender {
  male,
  female,
  others,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender currentActive = Gender.others;
  // Color maleCardColor = inactiveColor;
  // Color femaleCardColor = inactiveColor;
  // //Manipulate active or inactive colors on press or not
  // void colorChanger(Gender currentSelected) {
  //   //MALE card pressed color changer
  //   if (currentSelected == Gender.male) {
  //     if (maleCardColor == inactiveColor) {
  //       maleCardColor = activeColor;
  //       femaleCardColor = inactiveColor;
  //     } else {
  //       maleCardColor = inactiveColor;
  //     }
  //   }
  //   //MALE card pressed color changer
  //   if (currentSelected == Gender.female) {
  //     if (femaleCardColor == inactiveColor) {
  //       femaleCardColor = activeColor;
  //       maleCardColor = inactiveColor;
  //     } else {
  //       femaleCardColor = inactiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  // MALE Icon Container box
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          currentActive = Gender.male;
                        },
                      );
                    },
                    child: MyContainer(
                      customCard: const CustomIconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      mycolor: currentActive == Gender.male //Ternary
                          ? kActiveColor
                          : kInactiveColor,
                    ),
                  ),
                ),
                // FEMALE Icon Container box
                Expanded(
                  // FEMALE Icon Container box
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          currentActive = Gender.female;
                        },
                      );
                    },
                    child: MyContainer(
                      customCard: const CustomIconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      mycolor: currentActive == Gender.female //Ternary
                          ? kActiveColor
                          : kInactiveColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Middle part of the apps page
          const Expanded(
            child: MyContainer(
              customCard: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
              mycolor: kActiveColor,
            ),
          ),

          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    customCard: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 69,
                        ),
                      ],
                    ),
                    mycolor: kActiveColor,
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    customCard: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 69,
                        ),
                      ],
                    ),
                    mycolor: kActiveColor,
                  ),
                ),
              ],
            ),
          ),
          //Bottom Button-ish red nav bar
          Container(
            color: const Color(0xFFEB1555),
            width: double.infinity,
            height: 88,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
