List<int> filter(List<int> list, bool Function(int) predicate) {
  List<int> result = [];
  for (var number in list) {
    if (predicate(number)) {
      result.add(number);
    }
  }
  return result;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<num> oddNumbers = filter(numbers, (num n) => n % 2 != 0);
  print("odd Numbers: $oddNumbers");
}
