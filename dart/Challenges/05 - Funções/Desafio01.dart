import 'dart:io';

import 'Desafio02.dart';

void main() {
  print("Informe o numero final");
  var numeroInformado = stdin.readLineSync()!;
  int n = int.parse(numeroInformado);

  imprimir(n);
}
