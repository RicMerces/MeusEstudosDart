import 'dart:io';

void main() {
  print("Informe um numero de digitos ");
  var n = stdin.readLineSync()!;
  digitos(n);
}

int digitos(n) {
  int numero = n.length;

  print(numero);

  return numero;
}
