// 2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
//

class DecimalSystemToBinary {
  // Метод [binaryNumberSystem] для преобразования целых чисел из десятичной системы в двоичную.
  static String binaryNumberSystem(int x) {
    return x.toRadixString(2);
  }

  static num decimalSystem(String number) {
    // Метод [decimalSystem] для преобразования из двоичной системы в десятичную.
    return int.parse(number, radix: 2);
  }
}
