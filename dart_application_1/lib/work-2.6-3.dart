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

void main() {
  print(CollectionNum.numbersFromString(
      "один 2 3 4етыре пять шесть -7 восемь 9.5 десять 0"));
}
