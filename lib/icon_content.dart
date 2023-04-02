import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  const IconContent({required this.iconName, required this.iconText});

  final IconData iconName;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
