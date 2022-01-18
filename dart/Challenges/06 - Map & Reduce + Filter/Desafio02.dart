import 'dart:io';

import '../05 - Funções/Desafio09.dart';

void main() {
  informeOsValores();
}

String informeOsValores() {
  String resultado = '';
  for (int i = 0; i < 10; i++) {
    print("Informe o ${i + 1} valor");
    var v = stdin.readLineSync()!;

    resultado = adicionarALista(int.parse(v), i);
  }

  return resultado;
}

String adicionarALista(int valor, int cont) {
  String resultado = '';
  List lista = [];
  lista.add(valor);

  if (cont == 9) {
    resultado = imprimir(lista);
  }
  return resultado;
}

String imprimir(List l) {
  String texto = '';
  String aux = '';
  for (int i = 0; i < l.length; i++) {
    texto = aux + l[i];
    aux = texto;
  }
  print("$texto");
  return texto;
}
