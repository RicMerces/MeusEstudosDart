import 'dart:io';
import '../model/Data.dart';

main() {
  print("Informe qual a velocidade maxima do modelo de veiculo");
  var vMax = stdin.readLineSync()!;
  int vM = int.parse(vMax);

  print("Informe a velocidade atual");
  var vAtual = stdin.readLineSync()!;
  int vH = int.parse(vAtual);

  var seuCarro = new Data(vM, vH);

  while (seuCarro.velocidadeAtual > 0) {
    print("Deseja acelerar seu carro Digite (1)");
    print("Deseja desacelerar seu carro Digite (2)");
    var escolha = stdin.readLineSync()!;

    if (int.parse(escolha) == 1) {
      print("Acelerar !");
      seuCarro.acelerar();
    } else if (int.parse(escolha) == 2) {
      seuCarro.freio();
    }

    print("$seuCarro");
  }
}
