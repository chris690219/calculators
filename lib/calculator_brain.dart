import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Nadwaga';
    } else if (_bmi > 18.5) {
      return 'W normie';
    } else {
      return 'Niedowaga';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Twoja waga jest powyżej normy. Postaraj się wiecej ćwiczyć.';
    } else if (_bmi >= 18.5 ) {
      return 'Twoja waga jest w normie. Dobra robota!';
    } else {
      return 'Twoja waga jest poniżej normy. Zacznij jeść więcej.';
    }
  }
}
