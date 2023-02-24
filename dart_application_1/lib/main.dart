import 'package:dart_application_1/work-2.6-1.dart';
import 'package:dart_application_1/work-2.6-2.dart';
import 'package:dart_application_1/work-2.6-3.dart';
import 'package:dart_application_1/work-2.6-4.dart';
import 'package:dart_application_1/work-2.6-5.dart';
import 'package:dart_application_1/work-2.6-6.dart';
import 'package:dart_application_1/work-2.6-7.dart';

import 'work-2.6-8.dart';

void main() {
  print("#1.1 Nod ${DelimetersCalculator.nod(125, 43)}");
  print("#1.1 Nok ${DelimetersCalculator.nok(125, 43)}");
  print(
      "#1.3 Простые множители ${DelimetersCalculator.primeFactorization(144)}");

  print(
      "#2.1 Из десятичной в двоичную ${DecimalSystemToBinary.binaryNumberSystem(1500000)}");
  print(
      "#2.2 Из двоичной в десятичную ${DecimalSystemToBinary.decimalSystem(DecimalSystemToBinary.binaryNumberSystem(1500000))}");

  print(
      "#3.1 Фильтр строки (только числа) ${CollectionNum.numbersFromString("один 2 3 4етыре пять шесть -7 восемь 9.5 десять 0")}");

  List<String> mass = [
    'один',
    'два',
    'один',
    'три',
    'два',
    'четыре',
    'пять',
    'пять',
    'один'
  ];
  print("#4.1 ${CountWordsInString.wordCollection(mass)}");

  List collection = [
    'cat',
    'four',
    'three',
    'seven',
    'one',
    '4',
    'five',
    'one',
    'nine',
    ' ',
    'two',
    'three',
    '1',
    'zero',
    'One',
    'two',
    'nine'
  ];
  print("#5.1 ${NotRepNumbers.notRepeatingNumbers(collection)}");

  var point = Point(10, 10, 10);
  var distance = point.distanceTo(40, 30, -56);
  print("#6.1 Растояние между точек: $distance");

  var square = sTriangle(40, 30, -56, 10, 10, 10, 0, 0, 0);
  print("#6.2 Площадь треугольника: $square");

  point = Point.zero();
  distance = point.distanceTo(40, 30, -56);
  print("#6.3 Растояние от начала координат до точки: $distance");

  num number = 122;
  print("#7.1 ${number.root(3)}");

  print("----------------");
  var user1 = User("ostrokril@mail.ru");
  var user2 = AdminUser("admin@administrator.ru");
  var user3 = GeneralUser("ivan@ya.ru");
  var user4 = User("petr@gmail.ru");
  var user2domen = user2.getMailSystem; // вывод домена после @
  print("#8.1 ${user2domen}");

  UserManager.addUser(user1); // добавить пользователя
  UserManager.addUser(user2); // добавить пользователя
  UserManager.addUser(user3); // добавить пользователя
  UserManager.addUser(user4); // добавить пользователя
  UserManager.printUser(); // Вывод всех пользователей

  UserManager.removeUser(user1); // Удаление пользователя
  UserManager.printUser(); // Вывод всех пользователей после удаления
}
