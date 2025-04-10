class CalculatorBrain {

  final int height;
  final int weight;

  late double _bmi;


  CalculatorBrain(this.height, this.weight);

  calculateBMI() {
     _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  getInterpretation() {
    if (_bmi >= 25) {
      return 'Exercise more fatty';
    } else if (_bmi > 18.5) {
      return 'Well you are just normal. ';
    } else {
      return 'You are too skinny mate, eat more.';
    }
  }

}