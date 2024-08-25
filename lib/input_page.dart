import 'package:flutter/material.dart';

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
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    mycolor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    mycolor: Color(0xFF1D1E44),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              mycolor: Color(0xFF1D1E55),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    mycolor: Color(0xFF1D1E66),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    mycolor: Color(0xFF1D1E77),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({required this.mycolor});
  final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: mycolor, // Color need to be in Box Decoration widget
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
