import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/custom_icon_widget.dart';
import 'custom_card.dart';

const inactiveColor = Color(0xFF111328);
const activeColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  //Manipulate active or inactive colors on press or not
  void colorChanger(int gender) {
    //MALE card pressed color changer
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      } else {
        maleCardColor = inactiveColor;
      }
    }
    //MALE card pressed color changer
    if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
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
                          colorChanger(1);
                        },
                      );
                    },
                    child: MyContainer(
                      customCard: const CustomIconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      mycolor: maleCardColor,
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
                          colorChanger(2);
                        },
                      );
                    },
                    child: MyContainer(
                      customCard: const CustomIconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      mycolor: femaleCardColor,
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
                  Icon(
                    FontAwesomeIcons.mars,
                    size: 69,
                  ),
                ],
              ),
              mycolor: activeColor,
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
                    mycolor: activeColor,
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
                    mycolor: activeColor,
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
