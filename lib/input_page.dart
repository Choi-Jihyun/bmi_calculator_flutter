import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const appBarColor = Color(0xFF1E1F28);
const inactiveCardColor = Color(0xff111328);
const activeCardColor = Color(0xff1d1e33);
//const inactiveCardText = Color(0xFF8D8E98);
//const activeCardText = Colors.white;
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        print(maleCardColor);
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          backgroundColor: appBarColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                          print("clicked male");
                        });
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        cardChild: const IconContent(
                          iconName: FontAwesomeIcons.mars,
                          iconText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                          print("clicked female");
                        });
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        cardChild: const IconContent(
                          iconName: FontAwesomeIcons.venus,
                          iconText: 'FEMALE',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: const ReusableCard()),
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: ReusableCard()),
                  Expanded(
                    child: ReusableCard(
                      color: Color(0xffeb3155ff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: 80.0,
              //width: double.infinity,
            ),
          ],
        ));
  }
}
