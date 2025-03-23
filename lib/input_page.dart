import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_card.dart';
import 'gender_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  int height = 180;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        maleCardColor = kActiveCardColor;
                        femaleCardColor = kInactiveCardColor;
                      });
                    },
                    bgColor: maleCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: InputCard(
                    onPress: () {
                      setState(() {
                        femaleCardColor = kActiveCardColor;
                        maleCardColor = kInactiveCardColor;
                      });
                    },
                    bgColor: femaleCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InputCard(
              bgColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumbersTextSyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: kBottomContainerColor,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputCard(
                    bgColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: InputCard(
                    bgColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            child: Center(
                child: Text(
              "CALCULATE",
              style: TextStyle(fontSize: 24),
            )),
          )
        ],
      ),
    );
  }
}
