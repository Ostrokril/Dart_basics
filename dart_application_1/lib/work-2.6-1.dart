// 1. Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
//

class DelimetersCalculator {
  static void checkNumber(int number) {
    if (number <= 0) {
      throw Exception(
          'Число в методе не может быть отрицательным или равно нулю.');
    }
  }

  static int nod(int number1, int number2) {
    // Наибольший общий делитель [nod].
    checkNumber(number1);
    checkNumber(number2);

    var temp = 0;

    if (number1 < number2) {
      temp = number1;
      number1 = number2;
      number2 = temp;
    }

    while (number1 % number2 != 0) {
      temp = number2;
      number2 = number1 % number2;
      number1 = temp;
    }
    return number2;
  }

  static num nok(int number1, int number2) {
    // Наименьшее общее кратное [nok].
    checkNumber(number1);
    checkNumber(number2);
    return number1 / nod(number1, number2) * number2;
  }

  static List<int> primeFactorization(int number) {
    // Простые множители [primeFactorization].
    List<int> multipliers = [];
    for (int i = 2; i <= number; i++) {
      if (number % i == 0) {
        multipliers.add(i);
        number = number ~/ i;
        i = 1;
      }
    }
    return multipliers;
  }
}
