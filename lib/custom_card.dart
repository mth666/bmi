import 'package:flutter/material.dart';

//Reuseable custom styled container
class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key, required this.mycolor, required this.customCard});
  final Color mycolor;
  final Widget customCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: mycolor, // Color need to be in Box Decoration widget
        borderRadius: BorderRadius.circular(15),
      ),
      child: customCard,
    );
  }
}
