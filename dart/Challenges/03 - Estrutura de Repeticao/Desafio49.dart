import 'dart:io';

void main() {
  print("Informe um numero n");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  int x = 1;
  double soma = 0;
  double s = 0;
  double z = 0;
  for (int i = 1; i < n; i++) {
    soma = (i / x);
    print("${i / x}");
    x += 2;
    s = soma + z;
    z = s;
  }
  print(s);
}
