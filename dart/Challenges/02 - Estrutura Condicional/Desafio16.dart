import 'dart:io';

import 'dart:math';

void main() {
  print("Informe 3 valores a, b e c para uma equação do segundo grau");
  var valor01 = stdin.readLineSync()!;
  var valor02 = stdin.readLineSync()!;
  var valor03 = stdin.readLineSync()!;

  double a = double.parse(valor01);
  double b = double.parse(valor02);
  double c = double.parse(valor03);

  double delta = (b * b) - (4 * (a * c));
  double raizQuadradaDeDelta = sqrt(delta);
  double x1 = (-(b) - raizQuadradaDeDelta) / 2 * a;
  double x2 = (-(b) + raizQuadradaDeDelta) / 2 * a;

  print("X1 =  $x1");
  print("X2 =  $x2");
}
