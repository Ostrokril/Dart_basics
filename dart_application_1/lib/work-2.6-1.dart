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

void main() {
  print("Nod ${DelimetersCalculator.nod(125, 43)}");
  print("Nok ${DelimetersCalculator.nok(125, 43)}");
  print("primeFactorization ${DelimetersCalculator.primeFactorization(144)}");
}
