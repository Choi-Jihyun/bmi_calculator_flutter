import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.color, this.cardChild});

  final Color? color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color ?? const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
