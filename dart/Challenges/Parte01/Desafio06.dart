import 'dart:io';

void main() {
  print("Informe o raio de um circulo (Levando em consideração que pi = 3,14)");
  var r = stdin.readLineSync();
  double pi = 3.14;
  double raio = double.parse(r!);
  double area = pi * (raio * raio);

  print("area = $area cm^2");
}
