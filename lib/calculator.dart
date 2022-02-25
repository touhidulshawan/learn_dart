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

// take user input

void takeUserInput() {
  // take 1st number
  print("Enter 1st number : ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  // take 2nd number
  print("Enter 2nd number: ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  addition(firstNumber, secondNumber);
}

// make addition

void addition(int firstNumber, int secondNumber) {
  int result = firstNumber + secondNumber;

  print("Sum of $firstNumber + $secondNumber = $result");
}
