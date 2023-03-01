// 1. Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
//

class DelimetersCalculator {
  static bool naturNumber(int num1) {
    // Метод [naturNumber] проверки на отрицательное число и на ноль.
    return (num1 > 0) ? false : true;
  }

  static int nod(int number1, int number2) {
    // Наибольший общий делитель [nod].

    if (!naturNumber(number1) && !naturNumber(number2)) {
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
      return (number2);
    } else {
      throw new Exception(
          'Число в методе [nod] не может быть отрицательным или равно нулю.');
    }
  }

  static num nok(int number1, int number2) {
    // Наименьшее общее кратное [nok].
    if (!naturNumber(number1) && !naturNumber(number2)) {
      return (number1 / nod(number1, number2) * number2);
    } else {
      throw new Exception(
          'Число в методе [nok] не может быть отрицательным или равно нулю.');
    }
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

void main() {
  print("#1.1 Nod ${DelimetersCalculator.nod(126, 44)}");
  print("#1.1 Nok ${DelimetersCalculator.nok(-126, 44)}");
}
