import 'package:flutter/material.dart';

//icon content
class CustomIconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const CustomIconContent({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 69,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
