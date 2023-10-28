int fibonacci(int i) {
  if (i <= 0) {
    return 0;
  } else if (i == 1) {
    return 1;
  } else {
    return fibonacci(i - 1) + fibonacci(i - 2);
  }
}

void main() {
  int n = 10;
  int result = fibonacci(n);
  print(result);
}
