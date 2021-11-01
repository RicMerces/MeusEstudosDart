import 'dart:io';

void main() {
  print("Informe qual o tipo de combustivel você deseja usar");
  String combustivel = stdin.readLineSync()!;
  double valor;

  if (combustivel.toUpperCase() == 'GASOLINA') {
    print("GASOLINA FOI SELECIONADA");
    print("Informe em litros a quantidade de gasolina que você deseja");
    var qtd = stdin.readLineSync()!;
    double qtdEmLitros = double.parse(qtd);

    if (qtdEmLitros <= 20) {
      double valorDesconto = (qtdEmLitros * 2.50) * (0.03);
      print("Desconto = Reais $valorDesconto");
      valor = (qtdEmLitros * 2.50) - valorDesconto;
      print("Reais $valor");
    } else {
      double valorDesconto = (qtdEmLitros * 2.50) * (0.05);
      print("Desconto Reais $valorDesconto");
      valor = (qtdEmLitros * 2.50) - valorDesconto;
      print("Reais $valor");
    }
  } else if (combustivel.toUpperCase() == 'ALCOOL') {
    print("ALCOOL FOI SELECIONADO");
    print("Informe em litros a quantidade de alcool que você deseja");
    var qtd = stdin.readLineSync()!;
    double qtdEmLitros = double.parse(qtd);

    if (qtdEmLitros <= 20) {
      double valorDesconto = (qtdEmLitros * 1.90) * (0.03);
      print("Desconto = Reais $valorDesconto");
      valor = (qtdEmLitros * 1.90) - valorDesconto;
      print("Reais $valor");
    } else {
      double valorDesconto = (qtdEmLitros * 1.90) * (0.05);
      print("Desconto = Reais $valorDesconto");
      valor = (qtdEmLitros * 1.90) - valorDesconto;
      print("Reais $valor");
    }
  } else {
    print("ESSE COMBUSTIVEL NÃO EXISTE");
  }
}
