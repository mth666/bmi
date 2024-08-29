import 'package:flutter/material.dart';
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
  int humanheight = 180;
  int humanweight = 50;
  int humanage = 20;
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
          //MALE ICON and Text
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
          // Middle part of the apps page HEIGHT
          Expanded(
            child: MyContainer(
              customCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        humanheight.toString(),
                        style: kLabelStyleTwo,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                      value: humanheight.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double value666) {
                        setState(() {
                          humanheight = value666.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              mycolor: kActiveColor,
            ),
          ),
          //Weight Card Tile
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          humanweight.toString(),
                          style: kLabelStyleTwo,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyCustomButton(
                              my_icon: FontAwesomeIcons.minus,
                              onPrezz: () {
                                setState(() {
                                  humanweight--;
                                  //print('minus got pressed');
                                });
                              },
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            MyCustomButton(
                              my_icon: FontAwesomeIcons.plus,
                              onPrezz: () {
                                setState(() {
                                  humanweight++;
                                });
                              },
                            ),
                          ],
                        )
                        // Text('kg'),
                      ],
                    ), // WEIGHT Widget End
                    mycolor: kActiveColor,
                  ),
                ),
                // Age Widget Start
                Expanded(
                  child: MyContainer(
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          humanage.toString(),
                          style: kLabelStyleTwo,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyCustomButton(
                              my_icon: FontAwesomeIcons.minus,
                              onPrezz: () {
                                setState(() {
                                  humanage--;
                                  //print('minus got pressed');
                                });
                              },
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            MyCustomButton(
                              my_icon: FontAwesomeIcons.plus,
                              onPrezz: () {
                                setState(() {
                                  humanage++;
                                });
                              },
                            ),
                          ], //
                        )
                        // Text('kg'),
                      ],
                    ),
                    mycolor: kActiveColor,
                  ),
                ),
              ],
            ), // Age widget container End here
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

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {super.key, required this.my_icon, required this.onPrezz});
  final IconData my_icon;
  final Function onPrezz;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: () {
        onPrezz();
      },
      child: Icon(my_icon),
    );
  }
}
