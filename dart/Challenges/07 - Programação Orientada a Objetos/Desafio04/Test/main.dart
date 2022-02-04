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
  String retro = '';
  int ano = 2022;
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
      validarPeso(resp);
    }

    atual =
        '${p.nome} está em $ano com ${p.idade} anos, com uma altura de ${p.altura} e peso de ${p.peso}';
    print(atual + "\n");
    retro = imprimir(retro, atual);
    ano++;
  }
  print(retro);
  return retro;
}

double validarPeso(String resp) {
  if (resp.toUpperCase() == 'GANHEI') {
    print("Quanto você ganhou de peso ?");
    var ganho = stdin.readLineSync()!;
    p.engordar(double.parse(ganho));
  } else if (resp.toUpperCase() == 'PERDI') {
    print("Quanto você perdeu de peso ?");
    var perda = stdin.readLineSync()!;
    p.emagrecer(double.parse(perda));
  } else {
    p.peso = p.peso;
  }

  return p.peso;
}

String imprimir(String retro, String atual) {
  return retro = retro + '\n' + atual;
}
