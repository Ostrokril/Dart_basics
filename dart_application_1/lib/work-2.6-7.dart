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
      print("root = ${root}");
      return (n);
    } catch (e) {
      print("Возникло исключение $e");
    }
    return (0);
  }
}

void main() {
  num number = 122;
  number.root(3);
}
