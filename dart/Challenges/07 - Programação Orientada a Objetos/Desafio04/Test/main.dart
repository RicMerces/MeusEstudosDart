import '../Model/Pessoa.dart';
import 'dart:io';

Pessoa p = new Pessoa();

main() {
  iniciarPrograma();
}

void iniciarPrograma() {
  print("Informe seu nome");
  var name = stdin.readLineSync()!;
  print("Informe sua idade");
  var age = stdin.readLineSync()!;
  print("Informe sua altura");
  var h = stdin.readLineSync()!;
  print("Informe seu peso");
  var w = stdin.readLineSync()!;

  print("Informe em quantos anos você deseja ver o restrospecto");
  var timer = stdin.readLineSync()!;

  p.nome = name;
  p.idade = int.parse(age);
  p.altura = double.parse(h);
  p.peso = double.parse(w);

  gerarRetrospecto(int.parse(timer));
}

String gerarRetrospecto(int tempo) {
  int ano = 2022;
  String retro = '';
  String aux = '';
  for (int i = 0; i < tempo; i++) {
    var atual = '';
    if (i == 0) {
      print(
          "Olá ${p.nome}, vamos começar o retrospecto do $ano até ${ano + tempo}!\n");
    }

    if (i > 0) {
      p.envelhecer();

      print(
          "Durante o ano de $ano você ganhou peso ou perdeu se comparado com ${ano - 1} ? ");
      var resp = stdin.readLineSync()!;
      if (resp.toUpperCase() == 'GANHEI') {
        print("Quanto você ganhou de peso ?");
        p.engordar(ganho);
      } else if (resp.toUpperCase() == 'PERDI') {}
    }

    ano++;
  }
}
