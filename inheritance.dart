class Human {
  String name;
  int age;

  Human(this.name, this.age) {}

  void display() {
    print("Name: ${name}");
    print("Age: ${age}");
  }
}

class Employee extends Human {
  String department;
  Employee(super.name, super.age, this.department) {}

  void display() {
    print("Name: ${name}");
    print("Age: ${age}");
    print("Department: ${department}");
  }
}

class Student extends Human {
  int id_student;
  Student(super.name, super.age, this.id_student) {}
  void display() {
    print("Name: ${name}");
    print("Age: ${age}");
    print("Department: ${id_student}");
  }
}

void main() {
  Human h1 = new Human("Hafez", 21);
  h1.display();
  Employee e1 = new Employee("Abd", 25, "Developer");
  e1.display();
  Student s1 = new Student("Omar", 28, 3200);
  s1.display();
}
