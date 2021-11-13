import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  print(
      "Informe a elevação que vai estar no numero $numero para calcular a potencia");
  var elevado = stdin.readLineSync()!;

  int n = int.parse(numero);
  int n2 = n;
  for (int i = 1; i < int.parse(elevado); i++) {
    n *= n2;
  }
  print(n);
}
