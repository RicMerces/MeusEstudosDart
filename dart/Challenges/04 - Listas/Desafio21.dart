import 'dart:io';

void main() {
  List veiculos = [];
  List kmporlitro = [];
  List litragem = [];
  List precos = [];

  print("Informe a quantidade de veiculos");
  var nDeVeiculos = stdin.readLineSync()!;

  for (int i = 0; i < int.parse(nDeVeiculos); i++) {
    print("Veiculo = ${i + 1}");

    print("Informe o nome do veiculo");
    String nome = stdin.readLineSync()!;
    veiculos.add(nome);

    print("Informe a medida de km por litro");
    var medida = stdin.readLineSync()!;
    double km = double.parse(medida);
    kmporlitro.add(km);

    double litros = (1000 / km);
    litragem.add(litros);

    double preco = (litros * 2.25);
    precos.add(preco);
  }
}
