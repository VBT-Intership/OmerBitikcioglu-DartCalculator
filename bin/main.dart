/// VBT Internship Task_1 Dart Calculator
/// Ömer Faruk Bitikçioğlu

import 'calculator.dart';

void main() {
  Calculator calculator = Calculator(0);

  print("-" * 25);
  print('Welcome to Calculator!!!');
  print("-" * 25);

  while (true) {
    calculator.getInputs();
    calculator.calculate();

    print(calculator);
  }
}
