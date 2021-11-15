import 'dart:io';

void main() {
  print("Informe o numero de pessoas");
  var numeroDePessoas = stdin.readLineSync()!;
  int np = int.parse(numeroDePessoas);

  int hMax = 0;
  int hMin = 0;
  int pMax = 0;
  int pMin = 0;

  int x = 0;

  for (int i = 1; i <= np; i++) {
    print("Informe qual sua altura ");
    var altura = stdin.readLineSync()!;
    int h = int.parse(altura);

    print("Informe qual seu peso");
    var peso = stdin.readLineSync()!;
    int p = int.parse(peso);

    if (p > pMax) {
      pMax = p;
    }
    if (i == 1 || p < pMin) {
      pMin = p;
    }

    if (h > hMax) {
      hMax = h;
    }
    if (i == 1 || h < pMin) {
      hMin = h;
    }

    x++;
  }
  print(
      "O CODIGO DA PESSOA COM O ALTURA MAXIMA = $x e o altura dela = $hMax m");
  print(
      "O CODIGO DA PESSOA COM O ALTURA MINIMA = $x e o altura dela = $hMin m");
  print("O CODIGO DA PESSOA COM O PESO MAXIMA = $x e o peso dela = $pMax m");
  print("O CODIGO DA PESSOA COM O PESO MINIMO = $x e o peso dela = $pMin m");
}
