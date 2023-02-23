//6. Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
//У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
//По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
//Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение
//(например, конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).
import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);
//метод distanceTo возвращает расстояние от точки до точки в параметре.
  distanceTo(int dx, int dy, int dz) {
    var distance = sqrt(pow(x - dx, 2) + pow(y - dy, 2) + pow(z - dz, 2));
    return distance;
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }
}

//метод sTriangle, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника.
sTriangle(
    int x1, int y1, int z1, int x2, int y2, int z2, int x3, int y3, int z3) {
  var distanceOne = Point(x1, y1, z1).distanceTo(x2, y2, z2);
  var distanceTwo = Point(x2, y2, z2).distanceTo(x3, y3, z3);
  var distanceThree = Point(x1, y1, z1).distanceTo(x3, y3, z3);
  var p = (distanceOne + distanceTwo + distanceThree) / 2;
  var s = sqrt(p * (p - distanceOne) * (p - distanceTwo) * (p - distanceThree));
  return s;
}

void main() {
  var point = Point(10, 10, 10);
  var distance = point.distanceTo(40, 30, -56);
  print("Растояние между точек: $distance");

  var square = sTriangle(40, 30, -56, 10, 10, 10, 0, 0, 0);
  print("Площадь треугольника: $square");

  point = Point.zero();
  distance = point.distanceTo(40, 30, -56);
  print("Растояние от начала координат до точки: $distance");
}
