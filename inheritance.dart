class Person {
  void walk() {
    print("A Person can walk");
  }
}

class Person1 extends Person {
  void dance() {
    print("This person can Dance");
  }
}

void main() {
  Person1 p1 = Person1();
  p1.walk();
  p1.dance();
}
