import 'dart:io';

import '../model/Retangulo.dart';

void main() {
  print("Informe os lados do rentangulo");
  var altura = stdin.readLineSync()!;
  var largura = stdin.readLineSync()!;

  double h = double.parse(altura);
  double w = double.parse(largura);
  Retangulo r = new Retangulo(w, h);
  print('${r.altura}' + ' ${r.largura}');
}
