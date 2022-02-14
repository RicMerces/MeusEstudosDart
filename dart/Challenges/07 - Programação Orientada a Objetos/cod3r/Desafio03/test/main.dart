import 'dart:io';
import '../model/Retangulo.dart';

main() {
  Retangulo r = new Retangulo();

  print("Informe a medida do primeiro lado");
  var lado1 = stdin.readLineSync()!;
  print("Informe a medida do segundo lado");
  var lado2 = stdin.readLineSync()!;
  r.mudarLados(double.parse(lado1), double.parse(lado2));

  print(
      'A area = ${r.calcularArea()} m^2\nO Perimetro = ${r.calcularPerimetro()}');
}
