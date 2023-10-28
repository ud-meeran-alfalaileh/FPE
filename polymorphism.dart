class Car {
  void color() {}
}

class Car1 extends Car {
  @override
  void color() {
    print("red");
  }
}

class Car2 extends Car {
  @override
  void color() {
    print("white");
  }
}

void main() {
  Car car1 = Car1();
  Car car2 = Car2();
  car1.color();
  car2.color();
}
