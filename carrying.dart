Function curry(Function fun) {
  return (var firstNum) {
    return (var secondNum) {
      return fun(firstNum, secondNum);
    };
  };
}

int sum(int firstNum, int secondNum) {
  return firstNum + secondNum;
}

void main() {
  var curriedSum = curry(sum);

  var add2 = curriedSum(2);
  var add5 = curriedSum(5);
  print(curriedSum);

  print("Sum 2 to 3: ${add2(3)}");
  print("Sum 5 to 7: ${add5(7)}");
}
