import 'dart:io';

class Calculator {
  double _result;
  double _operand1, _operand2;
  var _op;

  Calculator(this._result);

  double get result {
    return _result;
  }

  void getInputs() {
    print('Enter an operator(+, -, *, /):');
    _op = stdin.readLineSync();

    print('Enter first input: ');
    _operand1 = double.parse(stdin.readLineSync());

    print('Enter second input: ');
    _operand2 = double.parse(stdin.readLineSync());
  }

  double calculate() {
    switch (_op) {
      case '+':
        _result = _operand1 + _operand2;
        break;
      case '-':
        _result = _operand1 - _operand2;
        break;
      case '*':
        _result = _operand1 * _operand2;
        break;
      case '/':
        _result = _operand1 / _operand2;
        break;
      default:
        throw ('Undefined operator!');
    }
    return _result;
  }

  @override
  String toString() {
    return "Result is ${_result}";
  }
}
