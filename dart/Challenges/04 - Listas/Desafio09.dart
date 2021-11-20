import 'dart:io';

void main() {
  List a = [];
  int soma = 0;
  int quadrado = 0;
  int x = 0;
  for (int i = 0; i < 10; i++) {
    print("Informe um numero");
    var numero = stdin.readLineSync()!;
    int n = int.parse(numero);
    a.add(n);
    if (i == 9) {
      for (int z = 0; z <= 9; z++) {
        quadrado = (a[z] * a[z]);
        soma = quadrado + x;
        x = soma;
      }
    }
  }
  print("O final da soma dos quadrados = $soma");
}
