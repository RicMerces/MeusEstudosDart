import 'dart:io';

//Faça um programa que informe o numero que o usuario digitou

void main() {
  print("Informe um numero");
  var n = stdin.readLineSync();
  int numero = int.parse(n!);

  print("O número informado foi [${numero}]");
}
