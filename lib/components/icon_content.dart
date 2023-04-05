import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {required this.iconName,
      required this.iconText,
      required this.iconTextStyle});

  final IconData iconName;
  final String iconText;
  final TextStyle iconTextStyle;

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
          style: iconTextStyle,
        ),
      ],
    );
  }
}
