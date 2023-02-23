//4. Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
class CountWordsInString {
  static wordCollection(List<String> x) {
    int i = 0;
    Map<String, int> map = {};
    for (var a in x) {
      for (var b in x) {
        if (a == b) i++;
      }
      map[a] = i;
      i = 0;
    }
    return (map);
  }
}

void main() {
  List<String> mass = [
    'один',
    'два',
    'один',
    'три',
    'два',
    'четыре',
    'пять',
    'пять',
    'один'
  ];
  print(CountWordsInString.wordCollection(mass));
}
