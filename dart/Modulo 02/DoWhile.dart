import 'dart:io';

void main() {
  print("Informe seu nome");
  String nome = stdin.readLineSync()!;
  String nomeReal = "Ricardo";

  do {
    print("Nome Incorreto ");
    print("Digite novamente0");
    nome = stdin.readLineSync()!;
  } while (nome != nomeReal);
}
