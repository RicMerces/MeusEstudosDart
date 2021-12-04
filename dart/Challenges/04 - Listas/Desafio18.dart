import 'dart:io';

void main() {
  int valor = 1;
  List j1 = [];
  List j2 = [];
  List j3 = [];
  List j4 = [];
  List j5 = [];
  List j6 = [];
  List j7 = [];
  List j8 = [];
  List j9 = [];
  List j10 = [];
  List j11 = [];
  List j12 = [];
  List j13 = [];
  List j14 = [];
  List j15 = [];
  List j16 = [];
  List j17 = [];
  List j18 = [];
  List j19 = [];
  List j20 = [];
  List j21 = [];
  List j22 = [];

  while (valor != 0) {
    print("Informe o seu nome");
    String nome = stdin.readLineSync()!;

    print("Informe o numero do jogador");
    var numero = stdin.readLineSync()!;
    valor = int.parse(numero);

    while (valor > 22 || valor < 0) {
      print("Esse jogador não existe ou não jogou esta partida");
      var numero = stdin.readLineSync()!;
      valor = int.parse(numero);
    }

    if (valor == 1) {
      j1.add(nome);
    } else if (valor == 2) {
      j2.add(nome);
    } else if (valor == 3) {
      j3.add(nome);
    } else if (valor == 4) {
      j4.add(nome);
    } else if (valor == 5) {
      j5.add(nome);
    } else if (valor == 6) {
      j6.add(nome);
    } else if (valor == 7) {
      j7.add(nome);
    } else if (valor == 8) {
      j8.add(nome);
    } else if (valor == 9) {
      j9.add(nome);
    } else if (valor == 10) {
      j10.add(nome);
    } else if (valor == 11) {
      j11.add(nome);
    } else if (valor == 12) {
      j12.add(nome);
    } else if (valor == 13) {
      j13.add(nome);
    } else if (valor == 14) {
      j14.add(nome);
    } else if (valor == 15) {
      j15.add(nome);
    } else if (valor == 16) {
      j16.add(nome);
    } else if (valor == 17) {
      j17.add(nome);
    } else if (valor == 18) {
      j18.add(nome);
    } else if (valor == 19) {
      j19.add(nome);
    } else if (valor == 20) {
      j20.add(nome);
    } else if (valor == 21) {
      j21.add(nome);
    } else if (valor == 22) {
      j22.add(nome);
    }
  }
}
