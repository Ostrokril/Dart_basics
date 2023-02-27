// 6. Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
// По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
// Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение
// (например, конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).
import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);

  num distanceTo(Point dot) {
    // Метод [distanceTo] возвращает расстояние от точки до точки.
    var distance =
        sqrt(pow(x - dot.x, 2) + pow(y - dot.y, 2) + pow(z - dot.z, 2));
    return distance;
  }

  factory Point.zero() {
    // Возвращает начало координат
    return Point(0, 0, 0);
  }

  static num sTriangle(
    // метод [sTriangle], принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника.
    Point dotOne,
    Point dotTwo,
    Point dotThree,
  ) {
    var distanceOne = dotOne.distanceTo(dotTwo);
    var distanceTwo = dotTwo.distanceTo(dotThree);
    var distanceThree = dotOne.distanceTo(dotThree);
    var p = (distanceOne + distanceTwo + distanceThree) / 2;
    var s =
        sqrt(p * (p - distanceOne) * (p - distanceTwo) * (p - distanceThree));
    return s;
  }
}
