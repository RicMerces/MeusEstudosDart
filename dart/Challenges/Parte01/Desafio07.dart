import 'dart:io';

//Imprima duas vezes a area de um quadrado

void main() {
  print("Informe a medida do lado de um quadrado");
  var lado = stdin.readLineSync();

  double area = double.parse(lado!) * double.parse(lado);

  print("Area = $area");
  print("X2 = ${area * 2}");
}
