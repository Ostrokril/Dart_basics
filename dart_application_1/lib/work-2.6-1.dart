// 1. Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
//

class DelimetersCalculator {
  static int nod(int number1, int number2) {
    // Наибольший общий делитель [nod].
    if (number1 <= 0 || number2 <= 0) {
      print("Нельзя вводить отрицательные и дробные числа.");
      return 0;
    }

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
  }

  static num nok(int number1, int number2) {
    // Наименьшее общее кратное [nok].
    if (number1 <= 0 || number2 <= 0) {
      print("Нельзя вводить отрицательные и дробные числа.");
      return 0;
    }
    return (number1 / nod(number1, number2) * number2);
  }

  static List<int> primeFactorization(int number) {
    // Простые множители [primeFactorization]
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
