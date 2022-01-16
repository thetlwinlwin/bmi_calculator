import 'dart:math';

class CalculateBmi {
  CalculateBmi({this.height, this.weight});
  final int height;
  final int weight;

  Map outcomeResult() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return {
        'Final': 'Overweight',
        'Result': bmi.toStringAsFixed(2).toString(),
        'Details':
            'You have a higher than normal body weight. Try to exercis more.'
      };
    } else if (bmi >= 18.5) {
      return {
        'Final': 'Normal',
        'Result': bmi.toStringAsFixed(2).toString(),
        'Details': 'You have a normal body weight. Good job!'
      };
    } else {
      return {
        'Final': 'Underweight',
        'Result': bmi.toStringAsFixed(2).toString(),
        'Details':
            'You have a lower than normal body weight. You can eat a bit more.'
      };
    }
  }
}
