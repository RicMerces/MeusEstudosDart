import 'dart:io';

void main() {
  List impar = [];
  List par = [];
  for (int i = 0; i < 20; i++) {
    print("Informe um numero");
    var numero = stdin.readLineSync()!;
    int n = int.parse(numero);
    if (n % 2 == 0) {
      par.add(n);
    } else {
      impar.add(n);
    }
  }
  print("Os Impares = $impar");
  print("Os Pares = $par");
}
