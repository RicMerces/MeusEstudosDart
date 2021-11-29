import 'dart:io';

void main() {
  List listas = [
    "Telefonou para a vítima?",
    "Esteve no local do crime?",
    "Mora perto da vítima?",
    "Devia para a vítima?",
    "Já trabalhou com a vítima?"
  ];
  int x = 0;
  for (int i = 0; i < 5; i++) {
    print(listas[i]);
    var son = stdin.readLineSync()!;

    if (son.toLowerCase() == "nao") {
    } else {
      x++;
    }
  }

  if (x > 0 && x < 5) {
    print("Suspeito");
  } else if (x == 5) {
    print("Culpado");
  } else if (x == 0) {
    print("Inocente");
  }
}
