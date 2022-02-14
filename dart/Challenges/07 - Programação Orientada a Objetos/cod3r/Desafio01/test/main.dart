import 'dart:io';
import '../Model/Bola.dart';

main() {
  print(iniciarBola());
}

String iniciarBola() {
  var bola = new Bola();
  print("Informe a cor inicial da bola");
  var cor = stdin.readLineSync()!;
  bola.cor = cor;

  print("Deseja atualizar a cor");
  var resposta = stdin.readLineSync()!;

  if (resposta.toUpperCase() == 'SIM') {
    print("Informe a cor inicial da bola");
    var novaCor = stdin.readLineSync()!;
    bola.trocarCor(novaCor);
  }

  return bola.mostrarCor();
}
