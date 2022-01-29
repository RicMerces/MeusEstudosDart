import 'dart:io';

void main() {
  informeValores();
}

String informeValores() {
  List par = [];
  List impar = [];
  for (int i = 0; i < 4; i++) {
    print("Informe um valor ");
    var v = stdin.readLineSync()!;

    if (int.parse(v) % 2 == 0) {
      par.add(int.parse(v));
    } else {
      impar.add(int.parse(v));
    }
  }

  String valor = "Par = $par\nImpar = $impar";
  print(valor);

  return valor;
}
