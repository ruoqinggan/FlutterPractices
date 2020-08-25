import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getBMIStatus() {
    if (bmi <= 18.5) {
      return 'underweight';
    } else if (bmi < 25) {
      return 'normal';
    } else if (bmi < 30) {
      return 'overweight';
    } else {
      return 'obese';
    }
  }

  String getBMIRec() {
    if (bmi <= 18.5) {
      return 'Your body weight might be a tiny bit low. You can eat a little more!';
    } else if (bmi < 25) {
      return 'You have a quite average body weight. Keep it up!';
    } else if (bmi < 30) {
      return 'You can exercise more to lower the body weight. Stay healthy!';
    } else {
      return 'Let\'s make sure we get some exercise done to stay healthy!';
    }
  }
}
