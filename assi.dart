import 'dart:io';

// Interface for playable items
abstract class Playable {
  void play();
}

// Base class Animal
class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Derived class Dog inheriting from Animal
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Class Guitar implementing Playable interface
class Guitar implements Playable {
  @override
  void play() {
    print('Playing guitar');
  }
}

// Class Person initialized with data from a file
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  factory Person.fromFile(String filePath) {
    // Read data from file and initialize instance variables
    List<String> data = File(filePath).readAsLinesSync();
    String name = data[0];
    int age = int.parse(data[1]);
    return Person(name, age);
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Demonstrating inheritance
  Animal animal = Animal();
  animal.makeSound();

  Dog dog = Dog();
  dog.makeSound();

  // Demonstrating interface implementation
  Guitar guitar = Guitar();
  guitar.play();

  // Demonstrating instance initialized with data from a file
  Person person = Person.fromFile('person.txt');
  print('Name: ${person.name}, Age: ${person.age}');

  // Demonstrating method using a loop
  printNumbers(5);
}