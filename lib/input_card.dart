import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({super.key, required this.bgColor, this.cardChild});

  final Color bgColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
