abstract class Animal {
  void makeSound();
}

abstract class Color {
  Color();
}

class Dog extends Animal implements Color {
  @override
  void makeSound() {
    print("barks");
  }

  @override
  void Color() {
    print("White");
  }
}

void main() {
  final dog = Dog();

  dog.Color();
  dog.makeSound();
}
