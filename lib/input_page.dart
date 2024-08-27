import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/custom_icon_widget.dart';
import 'custom_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    onTap: () {},
                    child: MyContainer(
                      customCard: CustomIconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      mycolor: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                // FEMALE Icon Container box
                Expanded(
                  child: MyContainer(
                    customCard: CustomIconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    mycolor: Color(0xFF1D1E33),
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
              mycolor: Color(0xFF1D1E33),
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
                    mycolor: Color(0xFF1D1E33),
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
                    mycolor: Color(0xFF1D1E33),
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
