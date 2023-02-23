import 'dart:math';

//1. Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
//Реализуйте метод, который разбивает число на простые множители и возвращает их.
class DelimetersCalculator {
//Наибольший общий делитель nod
  static nod(int a, int b) {
    var c = 0;

    if (a < b) {
      c = a;
      a = b;
      b = c;
    }

    while (a % b != 0) {
      c = b;
      b = a % b;
      a = c;
    }
    return (b);
  }

//Наименьшее общее кратное nok
  static nok(int a, int b) {
    return (a / nod(a, b) * b);
  }

//Простые множители
  static primeFactorization(a) {
    var list = [];
    for (var i = 2; i <= a; i++) {
      if (a % i == 0) {
        list.add(i);
        a = a / i;
        i = 1;
      }
    }
    return list;
  }
}

//2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
class DecimalSystemToBinary {
  static binaryNumberSystem(int x) {
    return x.toRadixString(2);
  }

  static decimalSystem(String y) {
    return int.parse(y, radix: 2);
  }
}

//3. Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
class CollectionNum {
  static numbersFromString(String x) {
    var num = [];
    List<String> list = x.split(' ');

    for (int i = 0; i < list.length; i++) {
      if (double.tryParse(list[i]) != null) num.add(list[i]);
    }
    return num;
  }
}

//4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
class CountWordsInString {
  static wordCollection(List<String> x) {
    int i = 0;
    Map<String, int> map = {};
    for (var a in x) {
      for (var b in x) {
        if (a == b) i++;
      }
      map[a] = i;
      i = 0;
    }
    return (map);
  }
}

//5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
//Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
//Однако цифры встречаются в виде английских слов от zero до nine.
//Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
//Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
class NotRepNumbers {
  static notRepeatingNumbers(List x) {
    Map<String, int> mapNum = {
      "zero": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9
    };
    List<int?> num = [];
    Set<dynamic> set = x.toSet();
    for (var n in set) {
      if (mapNum[n] != null) {
        num.add(mapNum[n]);
      }
    }
    return (num);
  }
}

//6. Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
//У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
//По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
//Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение
//(например, конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);
//метод distanceTo возвращает расстояние от точки до точки в параметре.
  distanceTo(int dx, int dy, int dz) {
    var distance = sqrt(pow(x - dx, 2) + pow(y - dy, 2) + pow(z - dz, 2));
    return distance;
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }
}

//метод sTriangle, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника.
sTriangle(
    int x1, int y1, int z1, int x2, int y2, int z2, int x3, int y3, int z3) {
  var distanceOne = Point(x1, y1, z1).distanceTo(x2, y2, z2);
  var distanceTwo = Point(x2, y2, z2).distanceTo(x3, y3, z3);
  var distanceThree = Point(x1, y1, z1).distanceTo(x3, y3, z3);
  var p = (distanceOne + distanceTwo + distanceThree) / 2;
  var s = sqrt(p * (p - distanceOne) * (p - distanceTwo) * (p - distanceThree));
  return s;
}

//7. Реализуйте метод, который вычисляет корень любой заданной степени из числа.
//Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
//Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.

extension RootCor on num {
  num root(num n) {
    double sign(double x) {
      if (x < 0) {
        x = -x;
      }
      return (x);
    }

    try {
      double root = this / n; //начальное приближение корня
      num rn = this; //значение корня последовательным делением
      while (sign(root - rn) >= 0.00001) {
        rn = this;
        for (int i = 1; i < n; i++) {
          rn = rn / root;
        }
        root = (rn + root) / 2;
      }
      return (root);
    } catch (e) {
      print("Возникло исключение $e");
    }
    return (0);
  }
}

//8. Создайте класс User, у которого есть поле email.
//Реализуйте два наследника данного класса AdminUser и GeneralUser.
//Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @.
//Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.

//Далее реализуйте класс UserManager<T extends User>,
//у которого будет храниться список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод,
//который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.

List<User> users = [];

class User {
  String email;

  String? getMailSystem;
  User(this.email);
}

class AdminUser extends User with GetMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User with GetMailSystem {
  GeneralUser(super.email);
}

mixin GetMailSystem on User {
  get getMailSystem {
    List<String> domen = this.email.split("@");
    return (domen[1]);
  }
}

class UserManager<T extends User> {
  static addUser(user) {
    users.add(user);
    print("Добвлен пользователь ${user.email}");
    return (users);
  }

  static removeUser(user) {
    if (users.contains(user)) {
      users.remove(user);
      print("Удален пользователь ${user.email}");
      return (users);
    } else {
      print("Пользователя ${user.email} не существует");
    }
  }

  static printUser() {
    List<String> listUsers = [];
    for (var i = 0; i < users.length; i++) {
      if (users[i] is AdminUser) {
        var sf = users[i].getMailSystem;
        listUsers.add(sf!);
      } else
        listUsers.add(users[i].email);
    }
    print(listUsers);
  }
}

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
