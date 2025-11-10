import 'dart:io';
import 'dart:math';

void main() {
  // 1
  List<String> animals = ["Tiger", "Lion", "Cat"];
  print(animals[1]);

  // 2
  animals.add("Dog");
  print(animals);

  //3
  print("จำนวนสมาชิกใน List: ${animals.length}");

  //4
  Map<String, int> studentScore = {
    "math": 90,
    "english": 85
  };
  print(studentScore["math"]);

  // 5
  Set<int> uniqueNumbers = {10, 20, 10, 30, 20};
  print(uniqueNumbers);

  // 6
   List<String> colors = ["Red", "Green", "Blue"];
  colors.removeAt(1);
  print(colors);

  // 7
  List<int> numbers = [5, 10, 15, 10];
  print(numbers.indexOf(10));

  // 8
  List<String> names = [];
  names.add("John");
  // names.add(123); error เพราะไม่ใช่ String
  print(names);
  
  // 9
  for (var animal in animals) {
    print("Animal: $animal");
  }

  // 10
  print(studentScore.containsKey("science"));

  // 11
  List<int> listA = [1, 2];
  List<int> listB = [3, 4];
  List<int> combined = [0, ...listA, ...listB, 5];
  print(combined);

  // 12
  bool isPremiumUser = false;
  List<String> features = [
    "Basic Feature",
    if (isPremiumUser) "Premium Feature"
  ];
  print(features);

  // 13
  List<int> original = [1, 2, 3];
  List<int> squares = [for (var n in original) n * n];
  print(squares);

  // 14
  studentScore.forEach((subject, score) {
    print("Subject: $subject, Score: $score");
  });

  // 15
  print("เพราะ Set ใน Dart (และในหลายภาษา) เป็นโครงสร้างข้อมูลที่ ไม่อนุญาตให้มีค่าซ้ำกัน ดังนั้นค่าที่ซ้ำ (เช่น 10 และ 20) จะถูกเก็บเพียงครั้งเดียวเท่านั้น");

  // Function
  // 1
  void printMyName() {
  print("P"); 
  }
  printMyName();

  // 2
  int getCurrentYear() {
    return DateTime.now().year;
  }
  print(getCurrentYear());

  // 3
  int multiply(int a, int b) {
    return a * b;
  }

  // 4
  void sayGoodbye() => print("Goodbye!");
  sayGoodbye();

  // 5
  print(multiply(10, 5));

  // 6
  void showUserDetails(String? name, int? age) {
    print("Name: $name, Age: $age");
  }

  // 7
  showUserDetails("David", 30);

  // 8
  void greet({required String name, String greeting = "Hello"}) {
    print("$greeting, $name");
  }
  greet(name: "Alice");
  greet(name: "Bob", greeting: "Hi");

  // 9
   void showUserDetails2({required String name, int? age}) {
    print("Name: $name, Age: $age");
  }
  showUserDetails2(name: "David", age: 30);

  // 10
   List<int> numberss = [1, 2, 3];
  numberss.forEach((numm) {
    print("Number: $numm");
  });
  
  // 11
  bool isEven(int number) => number % 2 == 0;
  print(isEven(4));
  print(isEven(7));

  // 12
  void logMessage(String message, [String level = "INFO"]) {
    print("[$level] $message");
  }
  logMessage("Error found");
  logMessage("Critical error", "ERROR");

  // 13
  void processNumbers(List<int> list, Function(int) action) {
    for (var n in list) {
      action(n);
    }
  }

  // 14
  void printSquare(int n) {
    print(n * n);
  }
  processNumbers([1, 2, 3], printSquare);

  // 15
  processNumbers([10, 20], (value) {
    print("Value: $value");
  });
  
  // OOP
  // 1
  /* var myCar = Car();

  // 2
  void testCar2() {
  var myCar = Car2();
  myCar.color = "Red";
  print(myCar.color); // แสดง: Red
  }
  testCar2();

  // 3
  void testCar3() {
  var myCar = Car3();
  myCar.drive();
}
  testCar3();

  // 4
  void testCar4() {
  var myCar = Car4();
  myCar.color = "Red";
  myCar.drive(); 
}
  testCar4();

  // 5
  void testCar5() {
  print(Car5.numberOfWheels);
}
  testCar5();

  // 7
  void testBook() {
  var myBook = Book("Dart Basics", 200);
  print("Title: ${myBook.title}, Pages: ${myBook.pages}");
}
 testBook();

 // 9
 void testMathHelper() {
  print(MathHelper.add(15, 30));
}
  testMathHelper();

  // 10
  void testUser() {
  var guestUser = User.guest();
  print(guestUser.username);
}
  testUser();

  // 11
  void testCircle() {
  var c = Circle(5);
  print(c.area); // แสดง: 78.53981633974483
}
  testCircle();

  // 14
  void testBankAccount() {
  var myAccount = BankAccount();
  myAccount.deposit = 100;
  myAccount.deposit = -50;
  print(myAccount.balance);
}
 testBankAccount();

 // 15
 void testDatabaseConnection() {
  var c1 = DatabaseConnection();
  var c2 = DatabaseConnection();
  var c3 = DatabaseConnection();
  print(DatabaseConnection.connectionCount);
}
  testDatabaseConnection(); */

  // OOP ตอนที่ 2
  // 1
  void testCar1() {
  var myCar = Car();
  myCar.move(); 
}
  testCar1();

  // 3
  void testCar2() {
  var myCar = Car2();
  myCar.move();
}
  testCar2();

  // 5
  void testBird() {
  var bird = Bird();
  bird.fly();
}
  testBird();
  
  // 6
  void testStudent() {
  var stu = Student("Alice", 101);
  print("Name: ${stu.name}, ID: ${stu.studentId}");
}
  testStudent();

  // 9
  void testMySQL() {
  var db = MySQLDatabase();
  db.connect(); 
}
  testMySQL();

  // 10
  void testLogger() {
  var logger = ConsoleLogger();
  logger.log("System started");
}
  testLogger();

  // 11
  void testDog() {
  var dog = Dog();
  dog.eat();
}
  testDog();

  // 13
 void testDuck() {
  var duck = Duck();
  duck.walk();
  duck.swim();
}
  testDuck();

  // 14
  void checkLight(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      print("STOP");
      break;
    case TrafficLight.yellow:
      print("WAIT");
      break;
    case TrafficLight.green:
      print("GO");
      break;
  }
}

void testTraffic() {
  checkLight(TrafficLight.red);    // STOP
  checkLight(TrafficLight.yellow); // WAIT
  checkLight(TrafficLight.green);  // GO
}
  testTraffic();

  // 15
  void testShape() {
  var c = Circle(5, "Blue");
  print("Color: ${c.color}, Area: ${c.getArea()}");
}
  testShape();
}

  //

/* class DatabaseConnection {
  static int connectionCount = 0;

  DatabaseConnection() {
    connectionCount++;
  }
}
class Circle {
  double radius;
  Circle(this.radius);

  double get area => pi * radius * radius;
}

class Car {}
class Car2 {
  String? color;
  int? year;
}
class Car3 {
  void drive() {
    print("The car is driving...");
  }
}

class Car4 {
  String? color;
  void drive() {
    print("Driving the $color car...");
  }
}

class Car5 {
  static const int numberOfWheels = 4;
}

// 6
class Book {
  String title;
  int pages;
  Book(this.title, this.pages);
}

// 8
class MathHelper {
  static int add(int a, int b) {
    return a + b;
  }
}

class User {
  String username;
  User(this.username);
  User.guest() : username = "Guest";
}

// 12+13
class BankAccount {
  double _balance = 0;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Deposit amount must be greater than 0");
    }
  }

  double get balance => _balance;
} */

// OOP ตอนที่ 2
// 1
class Vehicle {
  void move() {
    print("Moving...");
  }
}

class Car extends Vehicle {}

class Car2 extends Vehicle {
  @override
  void move() {
    print("Driving the car...");
  }
}

// 4
enum TrafficLight { red, yellow, green }

// 5
mixin Flyer {
  void fly() {
    print("I am flying!");
  }
}
class Bird with Flyer {}

// 6
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int studentId;
  Student(String name, this.studentId) : super(name);
}

// 7
// abstract class Database {}Error เพราะ abstract class ไม่สามารถถูกสร้างอ็อบเจกต์ได้ต้องมีคลาสลูกมา extends และ implement เมธอดก่อน

// 8
abstract class Database2 {
  void connect(); // เมธอดนามธรรม
}

// 9
class MySQLDatabase extends Database2 {
  @override
  void connect() {
    print("Connecting to MySQL...");
  }
}

// 10
class Logger {
  void log(String message) {}
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print("LOG: $message");
  }
}

// 11
class Animal {
  void eat() {
    print("Animal is eating.");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    super.eat(); // เรียกของแม่ก่อน
    print("Dog is eating bones.");
  }
}

// 12
/*
extends → ใช้เพื่อ "สืบทอด" คลาสแม่ (inherits properties/methods)
           สามารถเข้าถึงโค้ดของคลาสแม่ได้ และ override เมธอดได้

implements → ใช้เพื่อ "ทำตามสัญญา" (implement interface)
              ต้องเขียนเมธอดทั้งหมดใหม่เองทั้งหมด
              ไม่สามารถเข้าถึงโค้ดของคลาสต้นแบบได้
*/

// 13
mixin Walker {
  void walk() => print("Walking...");
}

mixin Swimmer {
  void swim() => print("Swimming...");
}

class Duck with Walker, Swimmer {}

// 15
abstract class Shape {
  String color;
  Shape(this.color);

  double getArea(); // abstract method
}

class Circle extends Shape {
  double radius;
  Circle(this.radius, String color) : super(color);

  @override
  double getArea() => pi * radius * radius;
}