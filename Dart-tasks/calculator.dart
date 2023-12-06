import 'dart:io';
import 'dart:async';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double? subtract(double a, double b) {
    return a - b;
  }

  double? multiply(double a, double b) {
    return a * b;
  }

  double? divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('can not divide by zero');
    }
    return a / b;
  }
}

void main() async {
  Calculator calculator = Calculator();
  double? result;
  print('enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);
  print('enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);
  print(
      'enter 1 for addition, 2 for subtraction, 3 for multiplication and 4 for division');
  double choice = double.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      result = calculator.add(num1, num2);
      Future.delayed(Duration(seconds: 5), () {
        print('Result: $result ');
      });
      break;
    case 2:
      result = calculator.subtract(num1, num2);
      Future.delayed(Duration(seconds: 5), () {
        print('Result: $result ');
      });
      break;
    case 3:
      result = calculator.multiply(num1, num2);
      Future.delayed(Duration(seconds: 5), () {
        print('Result: $result ');
      });
      break;
    case 4:
      try {
        result = calculator.divide(num1, num2);
      } catch (e) {
        print(e);
        return;
      }
      Future.delayed(Duration(seconds: 5), () {
        print('Result: $result ');
      });
      break;
  }
}
