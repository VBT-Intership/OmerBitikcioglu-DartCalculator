/// VBT Internship Task_1 Dart Calculator
/// Ömer Faruk Bitikçioğlu
import 'dart:io';
import 'calculator.dart';

void main() {
  var op;
  double input1, input2, result;

  print('Welcome to Calculator!!!');

  var repeat = true;
  var allowPrintResult = true;
  while (repeat) {
    // Take the operator from the user
    print('Enter an operator(+,-,*,/), or type x to exit: ');
    op = stdin.readLineSync();

    // Take the operands from the user
    if (op != 'x' && op != 'X') {
      try {
        print('Enter first input: ');
        input1 = double.parse(stdin.readLineSync());

        print('Enter second input: ');
        input2 = double.parse(stdin.readLineSync());
      } on FormatException {
        print('Please enter a numeric value!');
        allowPrintResult = false;
      }
    }

    // Make the calculation according to the given operator
    switch (op) {
      case '+':
        result = Calculator.add(input1, input2);
        break;
      case '-':
        result = Calculator.sub(input1, input2);
        break;
      case '*':
        result = Calculator.mult(input1, input2);
        break;
      case '/':
        result = Calculator.div(input1, input2);
        break;
      case 'x':
      case 'X':
        repeat = false;
        print('Program terminated.');
        allowPrintResult = false;
        break;
      default:
        print('Wrong/ Unknown operator!');
        allowPrintResult = false;
    }

    // Print the result
    if (allowPrintResult) {
      print('Result is $result');
    }
    allowPrintResult = true;
  }
}
