import 'dart:io';
import '../Model/Ponto.dart';
import '../Model/Retangulo.dart';

void main() {
  menu();
}

String menu() {
  print("Informe o valor para altura");
  var h = stdin.readLineSync()!;
  print("Informe o valor para a largura");
  var w = stdin.readLineSync()!;

  Retangulo r = new Retangulo(double.parse(h), double.parse(w));

  return '$r';
}
