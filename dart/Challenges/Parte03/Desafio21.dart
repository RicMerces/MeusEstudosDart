import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  var z = 0;

  for (int i = 1; n >= i; i++) {
    if (n % i == 0) {
      z++;
    }
  }
  if (z < 3) {
    print("$n é um Numero primo");
  } else {
    print("$n não é um Numero primo");
  }
}
