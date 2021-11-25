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

    if (son.toLowerCase() == "sim") {
      x++;
    } else if (son.toLowerCase() == "não") {}
  }

  if (x > 2 && x < 5) {
  } else if (x == 5) {}
}
