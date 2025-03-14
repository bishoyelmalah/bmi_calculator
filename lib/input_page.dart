import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_card.dart';
import 'gender_card.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = activeCardColor;
                        femaleCardColor = inactiveCardColor;
                      });
                    },
                    child: InputCard(
                      bgColor: maleCardColor,
                      cardChild: GenderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardColor = activeCardColor;
                        maleCardColor = inactiveCardColor;
                      });
                    },
                    child: InputCard(
                      bgColor: femaleCardColor,
                      cardChild: GenderCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCard(
              bgColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    bgColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: InputCard(
                    bgColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
            child: Center(
                child: Text(
              "CALCULATE BMI",
              style: TextStyle(fontSize: 24),
            )),
          )
        ],
      ),
    );
  }
}
