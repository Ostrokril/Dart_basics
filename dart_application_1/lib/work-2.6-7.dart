// 7. Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num.
// Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.
//

extension RootCor on num {
  num root(num number) {
    // Метод [root], который вычисляет корень любой заданной степени из числа. В случае когда значение вернуть невозможно, бросается исключение с описанием ошибки.
    double sign(double numberSign) {
      if (numberSign < 0) {
        numberSign = -numberSign;
      }
      return numberSign;
    }

    try {
      double root = this / number;
      num rn = this;
      while (sign(root - rn) >= 0.00001) {
        rn = this;
        for (int i = 1; i < number; i++) {
          rn = rn / root;
        }
        root = (rn + root) / 2;
      }
      print("root = $root");
      return number;
    } catch (e) {
      print("Возникло исключение $e");
    }
    return 0;
  }
}
