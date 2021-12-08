import 'dart:io';

void main() {
  print("Iforme quatidade de mouses");
  var quantidade = stdin.readLineSync()!;
  double qtd = double.parse(quantidade);

  print("");

  print("Informe a quantidade de esferas");
  var esferas = stdin.readLineSync()!;
  double esfera = double.parse(esferas);

  print("Informe a quantidade de limpezas");
  var limpezas = stdin.readLineSync()!;
  double limpeza = double.parse(limpezas);

  print("Informe a quantidade de esferas");
  var trocas = stdin.readLineSync()!;
  double troca = double.parse(trocas);

  print("Informe a quantidade de esferas");
  var quebrados = stdin.readLineSync()!;
  double quebrado = double.parse(quebrados);

  double soma = quebrado + troca + esfera + limpeza;

  while (soma > qtd) {
    print("\n VALORES NÃO CORRESPONDEM A QUANTIDADE $qtd");
    print("Informe a quantidade de esferas");
    var esferas = stdin.readLineSync()!;
    esfera = double.parse(esferas);

    print("Informe a quantidade de limpezas");
    var limpezas = stdin.readLineSync()!;
    limpeza = double.parse(esferas);

    print("Informe a quantidade de trocas");
    var trocas = stdin.readLineSync()!;
    troca = double.parse(esferas);

    print("Informe a quantidade de quebrados");
    var quebrados = stdin.readLineSync()!;
    quebrado = double.parse(esferas);

    soma = quebrado + troca + esfera + limpeza;
  }

  double porcentagem1 = (100 * esfera) / soma;
  double porcentagem2 = (100 * limpeza) / soma;
  double porcentagem3 = (100 * troca) / soma;
  double porcentagem4 = (100 * quebrado) / soma;

  print("Total 100% = $qtd");
  print("Esferas = $esfera = $porcentagem1%");
  print("Limpezas = $limpeza = $porcentagem2%");
  print("Troca = $troca = $porcentagem3%");
  print("Quebrado = $quebrado = $porcentagem4%");
}
