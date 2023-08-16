import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../brain_calculator.dart';
import '../widgets/car_button_box.dart';
import '../widgets/circle_button.dart';
import '../widgets/footer_button.dart';
import '../widgets/icon_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum? selectedGender;
  double currentHeight = 60;
  double currentWeight = 20;
  double currentAge = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardButtonBox(
                    action: () => {
                      setState(() {
                        selectedGender = GenderEnum.male;
                      })
                    },
                    color: selectedGender == GenderEnum.male
                        ? kHoverColor
                        : kSecondaryColor,
                    child: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardButtonBox(
                    action: () => {
                      setState(() {
                        selectedGender = GenderEnum.female;
                      })
                    },
                    color: selectedGender == GenderEnum.female
                        ? kHoverColor
                        : kSecondaryColor,
                    child: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardButtonBox(
              action: () => {},
              color: kSecondaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextLabel,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        currentHeight.toInt().toString(),
                        style: kTextNumberLabel,
                      ),
                      Text(
                        'cm',
                        style: kTextLabel,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 8.0,
                    ),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kTextSecondaryColor,
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        trackHeight: 2,
                        thumbColor: kAccentColor,
                        overlayColor: kTransparentAccentColor,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                          disabledThumbRadius: 10.0,
                        ),
                      ),
                      child: Slider(
                        min: 40.0,
                        max: 275,
                        value: currentHeight,
                        onChanged: (double currentSliderValue) => {
                          setState(() {
                            currentHeight = currentSliderValue;
                          })
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardButtonBox(
                    action: () => {},
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kTextLabel,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          currentWeight.toInt().toString(),
                          style: kTextNumberLabel,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleButton(
                              action: () => setState(() {
                                currentWeight--;
                              }),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleButton(
                              action: () => setState(() {
                                currentWeight++;
                              }),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardButtonBox(
                    action: () => {},
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kTextLabel,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          currentAge.toInt().toString(),
                          style: kTextNumberLabel,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleButton(
                              action: () => setState(() {
                                currentAge--;
                              }),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleButton(
                              action: () => setState(() {
                                currentAge++;
                              }),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          FooterButtonAction(
            action: () {
              context.go('/results',
                  extra: BmiCalculator(
                    weight: currentWeight,
                    height: currentHeight,
                  ));
            },
            label: 'CALCULATE',
          )
        ],
      ),
    );
  }
}
