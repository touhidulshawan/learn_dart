import 'dart:io';

void calculator() {
  print("----- Calculation -----");
  print("What is you name: ");
  String username = stdin.readLineSync()!;
  greeting(username);

  takeUserInput();
}

// greet the user

void greeting(String name) {
  print("Welcome to Dart World, $name");
}

enum Operation { plus, minus, multiply, divide }
// take user input

void takeUserInput() {
  // take 1st number
  print("Enter 1st number : ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  // take 2nd number
  print("Enter 2nd number: ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  calculate(firstNumber, secondNumber, Operation.plus);
}

// addition

void addition(int num1, int num2) {
  var result = num1 + num2;
  print("Sum : $result");
}

// do subtraction
void subtraction(int num1, int num2) {
  var result;

  if (num1 > num2) {
    result = num1 - num2;
  } else {
    result = num2 - num1;
  }
  print("Subtraction: $result");
}

// do multiplication

void multiply(int num1, int num2) {
  var result = num1 * num2;
  print("Multiplication: $result");
}

// do division

void division(int num1, int num2) {
  var result = (num1 / num2).round();

  print("Division: $result");
}

// calculate

void calculate(int num1, int num2, Operation op) {
  switch (op) {
    case Operation.plus:
      addition(num1, num2);
      break;
    case Operation.minus:
      subtraction(num1, num2);
      break;
    case Operation.multiply:
      multiply(num1, num2);
      break;
    case Operation.divide:
      division(num1, num2);
      break;
    default:
      print("Invalid Choice");
      break;
  }
}
