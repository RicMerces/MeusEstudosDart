import 'dart:io';

void main() {
  print("Telefonou para a vítima?");
  String resposta1 = stdin.readLineSync()!;
  int i = 0;

  if (resposta1 == "S") {
    i++;
  }

  print("Esteve no local do crime?");
  String resposta2 = stdin.readLineSync()!;

  if (resposta2 == "S") {
    i++;
  }

  print("Mora perto da vítima?");
  String resposta3 = stdin.readLineSync()!;

  if (resposta3 == "S") {
    i++;
  }

  print("Devia para a vítima?");
  String resposta4 = stdin.readLineSync()!;

  if (resposta4 == "S") {
    i++;
  }

  print("Já trabalhou com a vítima?");
  String resposta5 = stdin.readLineSync()!;

  if (resposta5 == "S") {
    i++;
  }

  if (i == 2) {
    print("SUSPEITA");
  } else if (i == 3 || i == 4) {
    print("CUMPLICE");
  } else if (i == 5) {
    print("ASSASSINO");
  } else {
    print("INOCENTE");
  }
}
