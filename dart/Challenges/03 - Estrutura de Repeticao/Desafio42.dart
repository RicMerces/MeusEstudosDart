import 'dart:io';

void main() {
  print("Informe uma quantidade de numeros");
  var qtdDeNumero = stdin.readLineSync()!;
  int qtd = int.parse(qtdDeNumero);

  int zeroVinte = 0;
  int vinteQuenta = 0;
  int cintenta = 0;
  int setem = 0;

  for (int i = 0; i < qtd; i++) {
    print("Informe um numero");
    var numero = stdin.readLineSync()!;
    int n = int.parse(numero);
    while (n < 0 || n > 100) {
      print(
          "Informe novamente o numero não deve ser menor que zero e maior ou igual a 100");
      var numero = stdin.readLineSync()!;
      n = int.parse(numero);
    }

    if (n >= 0 && n <= 25) {
      zeroVinte++;
    }
    if (n > 25 && n <= 50) {
      vinteQuenta++;
    }
    if (n > 50 && n <= 75) {
      cintenta++;
    }
    if (n > 75 && n <= 100) {
      setem++;
    }
  }

  print("Entre zero - vintecinco -> $zeroVinte");
  print("Entre vintecinco - cinquenta $vinteQuenta");
  print("Entre cinquenta - setenta e cinco $cintenta");
  print("Entre setenta e cinco - cem $setem");
}
