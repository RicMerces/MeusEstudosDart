import 'dart:io';

void main() {
  print("Informe a medida de três lados");
  var lado1 = stdin.readLineSync()!;
  var lado2 = stdin.readLineSync()!;
  var lado3 = stdin.readLineSync()!;

  double l1 = double.parse(lado1);
  double l2 = double.parse(lado2);
  double l3 = double.parse(lado3);

  if (l1 + l2 > l3 && l1 + l3 > l2 && l2 + l2 > l3) {
    print("Triangulo Existe");
    if (l1 == l2 && l2 != l3 || l1 == l3 && l3 != 2 || l2 == l3 && l1 != l3) {
      print("Triangulo Isorceles");
    } else if (l1 == l2 && l1 == l3) {
      print("Triangulo Equilatero");
    } else if (l1 != l2 && l2 != l3 && l1 != l2) {
      print("Triangulo Escaleno");
    }
  } else {
    print("Não existe Triangulo");
  }
}
