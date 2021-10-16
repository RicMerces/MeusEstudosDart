import 'dart:io';

void main() {
  print("Informe sua senha");
  String senhaCorreta = "BatatinhaFrita123";
  String password = stdin.readLineSync().toString();
  int i = 0;
  print(password);
  while (password != senhaCorreta && i < 3) {
    print("Senha Incorreta ! Você tem ${3 - i} tentativas\nDigite Novamente");
    password = stdin.readLineSync().toString();
    i++;
  }
  ;

  if (i >= 3) {
    print("TENTATIVAS ESGOTADAS");
  } else {
    print("ACESSO PERMITIDO");
  }
}
