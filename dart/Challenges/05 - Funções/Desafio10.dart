import 'dart:io';
import 'dart:math';

void main() {
  print("BEM VINDO AO CRAPS\nUM JOGO DE SORTE");
  var resposta = '';

  while (resposta.toLowerCase() != 'n') {
    print(
        "Deseja iniciar o jogo ?\nDigite (s) para jogar Digite (n) para não jogar");
    resposta = stdin.readLineSync()!;
    if (resposta == 's') {
      jogar();
    }
  }
}

String jogar() {
  print("Informe um valor entre 2 e 12");
  var valor = stdin.readLineSync()!;

  while (int.parse(valor) > 12 || int.parse(valor) < 2) {
    print("\nVALOR INVALIDO\nInforme um valor entre 2 e 12");
    valor = stdin.readLineSync()!;
  }

  sorteio();
}

int sorteio() {}
