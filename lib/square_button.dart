import 'package:flutter/material.dart';

// my custom button round buttons or squared shaped buttons
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
} //my custom button round buttons or squared shaped buttons
