import 'dart:io';
void main() {
  while (true) {
    stdout.write("Enter the first number: ");
    double firstNum = double.parse(stdin.readLineSync()!);    // firstnum
    stdout.write("Enter an operator (+, -, *, /): ");
    String operator = stdin.readLineSync()!;    //operator
    stdout.write("Enter the second number: ");
    double secondNum = double.parse(stdin.readLineSync()!);   // secondNum
    double result;
    switch (operator) {
      case '+':
        result = firstNum + secondNum;
        break;
      case '-':
        result = firstNum - secondNum;
        break;
      case '*':
        result = firstNum * secondNum;
        break;
      case '/':
        if (secondNum != 0) {
          result = firstNum / secondNum;
        } else {
          print("Error: Division by zero is not allowed.");
          continue;
        }
        break;
      default:
        print("Invalid operator. Please use +, -, *, or /.");
        continue;
    }
    print("Result: $firstNum $operator $secondNum = $result");
  }
}
