import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.genderIcon,
    required this.genderText,
  });

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
