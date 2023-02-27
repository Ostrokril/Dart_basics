// 4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
//

class CountWordsInString {
  static Map<String, int> wordCollection(List<String> listWords) {
    // Метод [wordCollection] принимает коллекцию слова и  считает количество вхождений каждого слова. Возвращает Map<слово, количество вхождений>.
    int count = 0;
    Map<String, int> map = {};
    for (var wordIteratorOne in listWords) {
      for (var wordIteratorTwo in listWords) {
        if (wordIteratorOne == wordIteratorTwo) count++;
      }
      map[wordIteratorOne] = count;
      count = 0;
    }
    return map;
  }
}
