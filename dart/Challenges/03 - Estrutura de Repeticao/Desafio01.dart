import 'dart:io';

//Faça um programa que peça uma nota, entre zero e dez.
//Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.
void main() {
  print("Informe uma nota entre 0 e 10");
  var nota = stdin.readLineSync()!;
  double n = double.parse(nota);

  while (n > 10 || n < 0) {
    print("Nota invalida \nInforme novamente uma nota entre 0 a 10");
    nota = stdin.readLineSync()!;
    n = double.parse(nota);
  }
  print("Nota valida !");
}
