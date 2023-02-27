// 5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
// Однако цифры встречаются в виде английских слов от zero до nine.
// Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
//

class NotRepNumbers {
  static List<int> notRepeatingNumbers(List<String> collectionWords) {
    // Метод [notRepeatingNumbers] принимает коллекцию слов и возвращает список цифр без повторений, которые встречаются в принимаемой строке.
    Map<String, int> mapNum = {
      "zero": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9
    };
    List<int> numbers = [];
    Set setCollection = collectionWords.toSet();
    for (var i in setCollection) {
      if (mapNum[i] != null) {
        numbers.add(mapNum[i]!);
      }
    }
    return numbers;
  }
}
