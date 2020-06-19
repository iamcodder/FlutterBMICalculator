import 'dart:math';

class UserInfo {
  final double _height;
  final int _weight;

  UserInfo(this._height, this._weight) {
    calculate();
  }

  double _result;

  void calculate() {
    _result = _weight / pow(_height / 100, 2);
  }

  String bmi() => _result.toStringAsFixed(1);

  String weightType() {
    if (_result > 0 && _result < 18.5) return 'Underweight';
    if (_result >= 18.5 && _result < 25) return 'Normal (Healthy Weight)';
    if (_result >= 25 && _result < 30) return 'Overweight';
    if (_result >= 30 && _result < 35) return 'Moderately Obese';
    if (_result >= 35 && _result < 45) return 'Severely Obese';
    if (_result >= 45) return 'Very Severely Obese';
  }

  String weightRange() {
    if (_result > 0 && _result < 18.5) return '0 - 18,5';
    if (_result >= 18.5 && _result < 25) return '18,5 - 24,9';
    if (_result >= 25 && _result < 30) return '25 - 29,9';
    if (_result >= 30 && _result < 35) return '30 - 34,9';
    if (_result >= 35 && _result < 45) return '35 - 44,9';
    if (_result >= 45) return '45 ve Üstü';
  }
}
