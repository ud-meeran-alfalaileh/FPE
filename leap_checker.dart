import 'dart:io';

void main() {
  stdout.write("Enter a year: ");
  int year = int.parse(stdin.readLineSync()!);

  if (isLeapYear(year)) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}

bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0)) {
      return true;
    }
  }
  return false;
}
