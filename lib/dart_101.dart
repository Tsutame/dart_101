import 'dart:io';

void main() {
  //1
  print("Welcome to Dart!");

  //2
  var planet = "Earth";
  print(planet);

  //3
  int myAge = 16;
  print(myAge);

  //4
  double piValue = 3.14159;
  print(piValue);

  //5
  bool isDartFun = true;
  print(isDartFun);

  //6
  int a = 15;
  int b = 4;
  print(a + b);

  //7
  print(a * b);

  //8
  var name = "Alice";
  int age = 28;
  print("My name is ${name} amd I am ${age} years old.");

  //9
  /* var myNumber = 100;
  myNumber = "Hello"; 
  ใช้ไม่ได้ เพราะเป็น Strongly Typed*/

  //10
  /* final city = "Bangkok";
  city = "Chiang Mai";
  ใช้ไม่ได้ เพราะ final เป็นค่าคงที่ Assign ตอน Runtime ไม่สามารถเปลี่ยนได้ */

  //11
  const secondsInMunite = 60;

  //12
  /* num flexibleNumber = 50;
  flexibleNumber = 75.5;
  ใช้งานได้ เพราะ num เป็น Super Set ใช้งานได้ทั้ง Int, Double */

  //13
  int x = 10;
  int y = 4;
  print(x/y);
  print((x / y).runtimeType);

  //14
  x = 10;
  y = 4;
  print(x ~/ y);
  print((x ~/ y).runtimeType);

  //15
  x = 10;
  y = 4;
  print(x % y);

  //16
  int score = 85;
  if (score >= 80) {
    print("True");
  } else {
    print("False");
  }

  //17
  score = 85;
  if (score != 100) {
    print("True");
  } else {
    print("False");
  }

  //18
  bool isMember = true;
  bool hasCoupon = false;
  print(isMember && hasCoupon);

  //19
  print(isMember || hasCoupon);

  //20
  print(!hasCoupon);

  //21
  age = 25;
  if (age > 18) {
    print("You are an adult.");
  }

  //22
  int number = -5;
  if (number > 0){
    print("Positive");
  } else {
    print("Negative or Zero");
  }

  //23
  for (int i=1; i<6; i++) {
    print(i);
  }
  
  //24
  int count = 1;
  while (count <= 3){
    print(count);
    count = count + 1;
  }

  //25
  score = 80;
  String messageTernary = (score >= 60) ? "Pass" : "Fail";
  print(messageTernary);

  //26
  int day = 3;
  switch (day) {
    case 3:
      print("Wednesday");
      break;
    default:
    print("Invalid Day");
  }

  //27
  for (int i=1; i<11; i++) {
    if (i == 4){
      break;
    }
    print(i);
  }

  //28
  for (int i=1; i<6; i++) {
    if (i == 3){
      continue;
    }
    print(i);
  }

  //29
  int temp = 28;
  if (temp > 30) {
    print("It's hot.");
  } else if (temp >= 20) {
    print("It's warm.");
  } else {
    print("It's cool.");
  }

  //30
  number = 5;
  do {
    print(number);
    number++;
  } while (number < 5);
}
