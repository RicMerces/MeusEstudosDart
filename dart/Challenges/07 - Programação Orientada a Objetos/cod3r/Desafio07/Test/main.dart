import 'dart:io';
import '../Model/Tamagushi.dart';

Tamagushi bixo = new Tamagushi();
main() {
  print("Informe o nome que você deseja dar ao seu bixinho");
  var name = stdin.readLineSync()!;

  print("Informe a idade de seu Tamagoshi");
  var id = stdin.readLineSync()!;

  bixo.idade = int.parse(id);
  bixo.nome = name;

  int i = 0;
  while (i != 4) {
    print(
        "Digite o numero para realizar ação !\n(1) Alimentar PET [Fome atual = ${bixo.fome}]\n(2) Ver humor do ${bixo.nome}\n(3) Rebatizar o Bixinho\n(4) Finalizar game");
    var valor = stdin.readLineSync()!;
    i = int.parse(valor);

    validar(i);
  }
}

validar(int i) {
  if (i == 1) {
    bixo.alimentar();
  } else if (i == 2) {
    bixo.medirSaude();
    print(bixo.medirHumor());
  } else if (i == 3) {
    print("Informe novo nome");
    var nome = stdin.readLineSync()!;
    bixo.nome = nome;
  } else if (i == 4) {
    print(bixo);
  } else {
    print("VALOR INVALIDO !\NINFORME NOVAMENTE\N");
  }
}
