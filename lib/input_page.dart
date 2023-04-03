import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  //}
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          backgroundColor: kAppBarColor,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        iconName: FontAwesomeIcons.mars,
                        iconText: 'MALE',
                        iconTextStyle: selectedGender == Gender.male
                            ? activeCardText
                            : inactiveCardText,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        iconName: FontAwesomeIcons.venus,
                        iconText: 'FEMALE',
                        iconTextStyle: selectedGender == Gender.female
                            ? activeCardText
                            : inactiveCardText,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              cardChild: Column(
                children: [
                  Text('HEIGHT'),
                  Row(
                    children: [
                      Text(
                        '180',
                        style: kReusableTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: ReusableCard()),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              //width: double.infinity,
            ),
          ],
        ));
  }
}
