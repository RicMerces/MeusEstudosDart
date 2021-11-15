import 'dart:io';

void main() {
  String string01 = "salve salve familia";
  String string02 = "SALVE SALVE FAMILIA";
  print("${string01} Minusculo para ${string01.toUpperCase()} Maiusculo");
  print("${string02} Maiusculo para ${string02.toLowerCase()} Minusculo");

  print("Escreva alguma frase");
  String teste = stdin.readLineSync()!;

  print("${teste.toLowerCase()} Minusculo");
  print("${teste.toUpperCase()} Minusculo");
}
