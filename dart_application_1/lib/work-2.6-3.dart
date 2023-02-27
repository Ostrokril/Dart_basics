// 3. Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
//

class CollectionNum {
  static List<num> numbersFromString(String stringWords) {
    // Метод [numbersFromString] принимает строку слов, разделенную пробелами, находит в строке числа и возвращает коллекцию чисел.
    List<num> numbers = [];
    List<String> listData = stringWords.split(' ');

    for (int i = 0; i < listData.length; i++) {
      if (num.tryParse(listData[i]) != null) {
        numbers.add(num.parse(listData[i]));
      }
    }
    return numbers;
  }
}
