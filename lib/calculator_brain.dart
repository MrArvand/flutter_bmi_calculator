import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi; // Will be initialized later before first use
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'اضافه وزن';
    } else if (_bmi > 18.5) {
      return 'نرمال';
    } else {
      return 'کمبود وزن';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'وزن شما کمی از میزان نرمال بیشتر است. سعی کنید بیشتر ورزش کنید 👟';
    } else if (_bmi >= 18.5) {
      return 'وزن شما نرمال است و همه چیز رو به راه است. 🟢 ایول!';
    } else {
      return 'وزن شما کمی از میزان نرمال کمتر است. سعی کنید بیشتر غذا بخورید 🍕';
    }
  }
}
