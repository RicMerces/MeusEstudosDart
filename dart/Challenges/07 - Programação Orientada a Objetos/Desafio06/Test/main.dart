import 'dart:io';
import '../Model/Televisor.dart';

main() {
  informeCanal();
}

informeCanal() {
  print("Informe um canal");
  var canal = stdin.readLineSync()!;
  Televisor t = new Televisor(int.parse(canal));

  var acoes = 'ligar';
  while (acoes.toLowerCase() != 'desligar') {
    print("Informe uma ação");
    acoes = stdin.readLineSync()!;
    if (acoes.toLowerCase() == 'subir') {
      t.subirCanal();
    } else if (acoes.toLowerCase() == 'descer') {
      t.descerCanal();
    } else if (acoes.toLowerCase() == 'abaixar') {
      t.diminuirVolume();
    } else if (acoes.toLowerCase() == 'aumentar') {
      t.aumentarVolume();
    } else if (acoes.toLowerCase() == 'desligar') {
      print("PowerOff");
    } else {
      bool x = int.parse(acoes) is int;
      if (x == true) {
        t.informarCanal(int.parse(acoes));
      }
    }
  }
}
