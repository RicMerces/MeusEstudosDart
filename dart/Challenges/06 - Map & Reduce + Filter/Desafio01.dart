import 'dart:io';

void main() {
  receberValores();
}

String receberValores() {
  print("Informe a quantidade de valores");
  var v = stdin.readLineSync()!;

  validacao(v);

  return v;
}

bool validacao(String v) {
  if (int.parse(v) == true) {
    iniciarPrograma(int.parse(v));
  } else {
    receberValores();
  }

  return true;
}

List iniciarPrograma(String v) {}
