import '../model/Carro.dart';

main() {
  var c1 = new Carro(320);

  while (!c1.atingiuOMax()) {
    print("A velocidade atual é ${c1.acelerar()} km/h");
  }

  print("O carro chegou no maximo com velocidade ${c1.velocidadeAtual} km/h");

  while (c1.velocidadeAtual > 0) {
    print("A velocidade atual é ${c1.desacelerar()} km/h");
  }

  print("O carro chegou no minimo com velocidade ${c1.velocidadeAtual} km/h");
}
