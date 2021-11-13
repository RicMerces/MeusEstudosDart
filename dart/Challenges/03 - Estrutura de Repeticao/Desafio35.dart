import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int inteiro = int.parse(numero);
  int cont = 0;
  for (int x = 1; x <= inteiro; x++) {
    for (int i = 1; i <= x; i++) {
      if (x % i == 0) {
        cont++;
      }
    }
    if (cont < 3) {
      print(x);
    }
  }
}
