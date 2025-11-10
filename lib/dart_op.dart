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

}