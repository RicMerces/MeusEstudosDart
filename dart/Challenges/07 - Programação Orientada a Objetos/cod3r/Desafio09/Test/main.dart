import 'dart:io';

import '../Model/Retangulo.dart';

void main() {
  print("Informe as cordenadas a altura e a largura ");
  var h = stdin.readLineSync()!;
  var w = stdin.readLineSync()!;

  double altura = double.parse(h);
  double largura = double.parse(w);

  Retangulo r = new Retangulo(altura: altura, largura: largura);

  print(r.gerarCentro());
}
