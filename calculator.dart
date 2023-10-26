import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double firstNumber = double.parse(stdin.readLineSync().toString());

  stdout.write("Enter an operator (+, -, *, /): ");
  String operator = stdin.readLineSync().toString();

  stdout.write("Enter the second number: ");
  double secondNumber = double.parse(stdin.readLineSync().toString());

  double result = 0;

  if (operator == "+") {
    result = firstNumber + secondNumber;
  } else if (operator == "-") {
    result = firstNumber - secondNumber;
  } else if (operator == "*") {
    result = firstNumber * secondNumber;
  } else if (operator == "/") {
    if (secondNumber != 0) {
      result = firstNumber / secondNumber;
    } else {
      print("Error: Division by zero is not allowed.");
    }
  } else {
    print("Invalid operator. Please use +, -, *, or /.");
  }
  print("Result: $firstNumber $operator $secondNumber = ${result}");
}
