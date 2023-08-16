import 'dart:math';

class BmiCalculator {
  late double _bmi;
  final double weight;
  final double height;

  BmiCalculator({required this.weight, required this.height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body id higher than normal body weight; try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'Your have a lower than normal body weight; you can eat a bit more.';
    }
  }
}
