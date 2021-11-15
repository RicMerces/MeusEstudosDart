import 'dart:io';

void main() {
  print("Informe seu nome");
  String nome = stdin.readLineSync()!;
  double sFinal = 0;
  int x = 1;
  //Caso de Afonso (Parte 01)
  if (nome.toUpperCase() == 'Afonso'.toUpperCase()) {
    double sInicial = 1000;
    int anoInicial = 1995;
    for (int i = anoInicial; i <= 2021; i++) {
      sFinal = sInicial + (sInicial * (0.015 * (2 * x)));
      x++;
    }
  }
  //Parte 02
  else {
    print("Informe seu salario inicial");
    var salarioInicial = stdin.readLineSync()!;
    double sInicial = double.parse(salarioInicial);
    print("Informe o ano que você começou a trabalhar");
    var primeiroAno = stdin.readLineSync()!;
    int anoInicial = int.parse(primeiroAno);

    while (anoInicial > 2021) {
      print("Não aceitamos numeros posterior a 2021");
      var primeiroAno = stdin.readLineSync()!;
      anoInicial = int.parse(primeiroAno);
    }

    for (int i = anoInicial; i <= 2021; i++) {
      sFinal = sInicial + (sInicial * (0.015 * (2 * x)));
      x++;
    }
  }

  print("O salario atual dele em 2021 = $sFinal Reais");
}
