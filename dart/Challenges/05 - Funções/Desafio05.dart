import 'dart:io';

void main() {
  informe();
}

// Faça um programa com uma função chamada somaImposto.
// A função possui dois parâmetros formais: taxaImposto,
//que é a quantia de imposto sobre vendas expressa em porcentagem e custo,
// que é o custo de um item antes do imposto. A função “altera” o valor de
//custo para incluir o imposto sobre vendas.

void informe() {
  print("Informe o valor do imposto");
  var qImposto = stdin.readLineSync()!;
  print("Informe a quantidade de vendas");
  var qVendas = stdin.readLineSync()!;
  print("Informe o custo");
  var qCusto = stdin.readLineSync()!;

  //Valor imposto e das vendas
  int vendas = int.parse(qVendas);
  double imposto = double.parse(qImposto);

  double taxaImposto0 = imposto * 100 / vendas;

  double taxaImposto = taxaImposto0 / 100;

  double custo = double.parse(qCusto);

  somaImposto(taxaImposto, custo);
}

double somaImposto(double tI, double c) {
  double x = tI + c;
  print(x);
  return x;
}
