import 'dart:io';

void main() {
  print("Informe o numero de pessoas");
  var numeroDePessoas = stdin.readLineSync()!;
  int np = int.parse(numeroDePessoas);

  int hMax = 0;
  int hMin = 0;
  int pMax = 0;
  int pMin = 0;

  for (int i = 1; i <= np; i++) {
    print("Informe qual sua altura ");
    var altura = stdin.readLineSync()!;
    int h = int.parse(altura);

    print("Informe qual seu peso");
    var peso = stdin.readLineSync()!;
    int p = int.parse(peso);

    if (i == np) {
      if (p > pMax) {
        pMax = p;
        print(
            "O CODIGO DA PESSOA COM O PESO MAXIMO = $i e o peso dela = $pMax kg");
      }
      if (i == 1 || p < pMin) {
        pMin = p;
        print(
            "O CODIGO DA PESSOA COM O PESO MINIMO = $i e o peso dela = $pMin kg");
      }

      if (h > hMax) {
        hMax = h;
        print(
            "O CODIGO DA PESSOA COM O ALTURA MAXIMA = $i e o peso dela = $hMax m");
      }
      if (i == 1 || h < pMin) {
        hMin = h;
        print(
            "O CODIGO DA PESSOA COM O ALTURA MAXIMA = $i e o peso dela = $hMin m");
      }
    }
  }
}
