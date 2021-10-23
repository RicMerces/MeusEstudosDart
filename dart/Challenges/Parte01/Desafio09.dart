import 'dart:io';

// Converter Fahrenheit para Celsius
void main() {
  print("Informe a temperatura em fahreinheit");
  var tF = stdin.readLineSync()!;

  double tC = 5 * (((double.parse(tF)) - 32) / 9);

  print("$tC°C ");
}
