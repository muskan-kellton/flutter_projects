import 'dart:math';

class BmiCalculator {
  int height;
  int weight;
  double _bmi = 0;

  BmiCalculator({required this.height, required this.weight});

  String calculator() {
    _bmi = weight / pow(height / 100, 2);
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
      return 'Try to exercise more!!';
    } else if (_bmi > 18.5) {
      return 'Good Job!';
    } else {
      return 'You can eat a bit more!';
    }
  }
}
