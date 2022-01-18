import 'dart:io';

import '../05 - Funções/Desafio09.dart';

void main() {
  informeOsValores();
}

String informeOsValores() {
  String resultado = '';
  List lista = [];
  for (int i = 0; i < 10; i++) {
    print("Informe o ${i + 1} valor");
    var v = stdin.readLineSync()!;

    resultado = adicionarALista(int.parse(v), lista);
  }

  return resultado;
}

String adicionarALista(int valor, lista) {
  String resultado = '';

  lista.add(valor);

  if (lista.length == 10) {
    resultado = imprimir(lista);
  }
  // print(lista);
  return resultado;
}

String imprimir(List l) {
  String texto = '';
  String aux = '';
  for (int i = 0; i < l.length; i++) {
    texto = '${l[i]} $aux';
    aux = texto;
  }
  print("$texto");
  return texto;
}
