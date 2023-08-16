import 'package:bmi_calculator/const.dart';
import 'package:bmi_calculator/widgets/footer_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../brain_calculator.dart';
import '../widgets/car_button_box.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.bmiBrain}) : super(key: key);

  final BmiCalculator bmiBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FontAwesomeIcons.barsStaggered),
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: AlignmentDirectional.bottomStart,
              child: const Text(
                'Your Result',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 45.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardButtonBox(
              color: kSecondaryColor,
              action: () => {},
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      bmiBrain.getResult(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                          fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      bmiBrain.getBmi(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 80.0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        bmiBrain.getInterpretation(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    ),
                  ]),
            ),
          ),
          FooterButtonAction(
            label: 'RE-CALCULATE',
            action: () => context.go('/'),
          )
        ],
      ),
    );
  }
}
