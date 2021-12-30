import 'dart:io';

import 'Desafio02.dart';

void main() {
  print("Informe o numero final");
  var numeroInformado = stdin.readLineSync()!;
  int n = int.parse(numeroInformado);

  imprimir(n);
}

String imprimir(int n) {
  int n1 = 1;
  String texto = '';

  for (int i = 0; i <= n; i++) {
    texto = '';
    String sT = '';
    for (int x = 0; x < n1; x++) {
      texto = '$n1' + '$sT';
      sT = texto;
    }
    n1++;
    print(texto);
  }

  return texto;
}
