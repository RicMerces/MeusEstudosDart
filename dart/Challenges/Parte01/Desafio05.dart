import 'dart:io';

//Faça um programa que converta metros para cm
void main() {
  print("Informe uma medida em metros para ser convertido em centimetros");
  var medidaEmMetros = stdin.readLineSync();
  print("$medidaEmMetros m");

  double medidaEmCentimetros = double.parse(medidaEmMetros!) * 100;

  print("$medidaEmCentimetros cm");
}
