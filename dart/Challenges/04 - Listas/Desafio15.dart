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
  int r = numeros.length - 1;
  int sub = 1;
  int z = 0;
  // print(z);
  print(numeros.last);

  for (int i = numeros.length; i >= 0; i++) {
    numerosInvertidos.add(numeros.last);
    numeros.remove(numeros.last);
    y = numeros.last + x;
    x = y;
  }

  print("c) $numerosInvertidos");
  print("d) $y");
}
