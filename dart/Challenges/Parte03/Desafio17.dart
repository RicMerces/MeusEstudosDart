import 'dart:io';

void main() {
  print("Informe um numero para calcular a fatorial");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);

  int n1 = 1;
  int n2 = 2;
  var fatorial;
  for (int i = 1; i < n; i++) {
    fatorial = n1 * n2;
    n1 = fatorial;
    n2++;
  }
  print("\n$n! = $fatorial");
}
