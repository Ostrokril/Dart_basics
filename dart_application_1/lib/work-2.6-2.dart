//2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
class DecimalSystemToBinary {
  static binaryNumberSystem(int x) {
    return x.toRadixString(2);
  }

  static decimalSystem(String y) {
    return int.parse(y, radix: 2);
  }
}

void main() {
  print(DecimalSystemToBinary.binaryNumberSystem(1500000));
  print(DecimalSystemToBinary.decimalSystem(
      DecimalSystemToBinary.binaryNumberSystem(1500000)));
}
