import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  print("Numeros que dividem por $n =");
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      print("| $i |");
    }
  }
}
