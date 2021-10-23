import 'dart:io';

// Faça um Programa que peça a temperatura em graus Celsius, transforme e mostre em graus Fahrenheit.

void main() {
  print("Informe a medida em Celsius ");
  var tC = stdin.readLineSync()!;

  double tF = ((double.parse(tC) * 9) / 5) + 32;

  print("$tF°F");
}
