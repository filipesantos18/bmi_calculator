// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class Calculator {
  final int height;
  final int wheight;

  double _bmi;
  Calculator({
    required this.height,
    required this.wheight,
  }) : _bmi = 0;

  String calculateBmi() {
    _bmi = wheight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overwheight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underwheight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
