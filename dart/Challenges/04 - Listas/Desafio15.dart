import 'dart:io';

void main() {
  List numeros = [];

  int value = 0;
  while (value != -1) {
    print("Informe um numero inteiro");
    var numero = stdin.readLineSync()!;
    value = int.parse(numero);
    numeros.add(value);
  }
  print("a) ${numeros.length}");
  print("b) ${numeros}");

  List numerosInvertidos = [];
  int x = 0;
  int y = 0;
  int r = numeros.length;
  int sub = 1;
  int z = 0;
  // print(z);

  for (int i = 1; i >= numeros.length; i++) {
    z = numeros[r - sub];
    numerosInvertidos.add(z);
    y = x + z;
    x = y;

    sub--;
  }

  print("c) $numerosInvertidos");
  print("d) $y");
}
