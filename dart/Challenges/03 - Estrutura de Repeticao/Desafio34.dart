import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int inteiro = int.parse(numero);
  int cont = 0;
  for (int i = 1; i <= inteiro; i++) {
    if (inteiro % i == 0) {
      cont++;
    }
  }
  if (cont > 2) {
    print("O numero $numero NÃO é primo");
  } else {
    print("O numero $numero é primo");
  }
}
