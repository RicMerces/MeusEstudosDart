import 'dart:io';

void main() {
  print("Informe um ano e diremos se ele é bissexto ou não ");
  var n = stdin.readLineSync();
  int ano = int.parse(n!);

  if (ano % 4 == 0) {
    print("Ano bissexto");
  } else {
    print("Ano comum");
  }
}
