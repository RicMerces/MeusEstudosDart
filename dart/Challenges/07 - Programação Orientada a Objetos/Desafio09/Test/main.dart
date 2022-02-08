import 'dart:io';
import '../Model/Retangulo.dart';

main() {
  print("Informe os lados do retangulo");
  var h = stdin.readLineSync()!;
  var w = stdin.readLineSync()!;

  Retangulo r = Retangulo(double.parse(h), double.parse(w));
}
