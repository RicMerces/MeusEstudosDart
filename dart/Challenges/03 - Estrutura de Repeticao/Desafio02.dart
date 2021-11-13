import 'dart:io';

//Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha igual ao nome do usuário,
//mostrando uma mensagem de erro e voltando a pedir as informações.

void main() {
  print("Informe seu usuario");
  String usuario = stdin.readLineSync()!;
  print("Informe sua senha");
  String senha = stdin.readLineSync()!;

  while (usuario.toUpperCase() == senha.toUpperCase()) {
    print("SENHA MUITO FACIL\nDigite novamente uma senha melhor");
    senha = stdin.readLineSync()!;
  }

  print("SENHA ACEITA COM SUCESSO");
}
