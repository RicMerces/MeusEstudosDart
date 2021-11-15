import 'dart:io';

void main() {
  String cidadeComIndice01 = '';
  String cidadeComIndice02 = '';
  String cidadeComIndice03 = '';
  String cidadeComIndice04 = '';

  int veiculos = 0;
  int qtdAci = 0;

  int maxCar = 0;
  int minCar = 0;
  int maxAci = 0;
  int minAci = 0;

  double mediaDeVeiculos = 0;
  double vCidade = 0;

  int qtdCity = 1;
  double mediaDeAcidente = 0;
  double qtdAciPorCidade = 0;

  for (int i = 1; i <= 5; i++) {
    print("Informe o nome da cidade");
    String nomeDaCidade = stdin.readLineSync()!;

    print("Informe o numero de veiculos a passeio");
    var veiculosAPasseio = stdin.readLineSync()!;
    veiculos = int.parse(veiculosAPasseio);

    print("Informe a quantidade de acidentes de transito no ano ");
    var acidentes = stdin.readLineSync()!;
    qtdAci = int.parse(acidentes);

    //Indice um (Cidade com Numero minimo de carros dentre as 5)
    if (i == 1 || minCar > veiculos) {
      minCar = veiculos;
      cidadeComIndice01 = nomeDaCidade;
    }

    //Indice dois (Cidade com Numero minimo de acidentes dentre as 5)
    if (i == 1 || minAci > qtdAci) {
      minAci = qtdAci;
      cidadeComIndice02 = nomeDaCidade;
    }

    //Indice três (Cidade com Numero maximo de acidentes dentre as 5)
    if (maxAci < qtdAci) {
      maxAci = qtdAci;
      cidadeComIndice03 = nomeDaCidade;
    }

    //Indice quatro (Cidade com Numero maximo de carros dentre as 5)
    if (maxCar < veiculos) {
      maxCar = veiculos;
      cidadeComIndice04 = nomeDaCidade;
    }

    mediaDeVeiculos = veiculos + vCidade;
    vCidade = mediaDeVeiculos;

    if (qtdAci > 2000) {
      mediaDeAcidente = qtdAciPorCidade + qtdAci;
      qtdAciPorCidade = mediaDeAcidente;
      qtdCity++;
    }
  }

  print(
      "A) A CIDADE COM MAIS VEICULOS = $cidadeComIndice04, com em torno de $maxCar de veiculos");
  print(
      "B) A CIDADE COM MENOS VEICULOS = $cidadeComIndice01 com em torno de $minCar de veiculos");
  print(
      "C) A CIDADE COM MAIS ACIDENTES = $cidadeComIndice03 com em torno de $maxAci de acidentes");
  print(
      "D) A CIDADE COM MENOS ACIDENTES = $cidadeComIndice02 com em torno de $minAci de acidentes");
  print(
      "F) A MEDIA DE ACIDENTES A EM CIDADES COM MAIS DE 2000 HABITANTES = ${mediaDeAcidente / qtdCity}");
  print("G) A MEDIA DE VEICULOS DENTRE AS 5 CIDADES = ${mediaDeVeiculos / 5}");
}
