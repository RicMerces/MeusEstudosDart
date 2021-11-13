import 'dart:io';

void main() {
  print("Informe um numero entre 0 e 1000");
  var numero = stdin.readLineSync()!;
  int qtd = int.parse(numero);
  do {
    print("Digite novamente esse valor é invalido");
    var numero = stdin.readLineSync()!;
    qtd = int.parse(numero);
  } while (qtd >= 1000 && qtd <= 0);
  var n1 = 0; //Maior
  var n2 = 0; //Menor
  int z = 0;
  int x = 0;
  int soma;
  for (int i = 1; i <= qtd; i++) {
    print("Informe o $iº numero da lista");
    var numero = stdin.readLineSync()!;
    int nu = int.parse(numero);
    soma = nu + x;
    x = soma;
    if (nu >= n1) {
      n1 = nu;

      z++;
      if (z == 1 || z == 0) {
        n2 = n1;
      }
    }
  }
  print("O maior numero = $n1 e o menor = $n2 soma = $x");
}
