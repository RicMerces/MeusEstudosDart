import 'dart:io';

void main() {
  print("Informe o valor de sua hora");
  var sH = stdin.readLineSync()!;

  print("Informe o tempo que você trabalha mensalmente");
  var horario = stdin.readLineSync()!;

  double sInicial = double.parse(sH) * double.parse(horario);
  int taxaDeDesconto = 0;
  double impostoDeRenda = (sInicial * (taxaDeDesconto / 100));
  double inss = sInicial * (0.1);
  double fgts = sInicial * (0.11);
  double totalDeDesconto;

  if (sInicial <= 900 && sInicial > 0) {
    taxaDeDesconto = 0;
    totalDeDesconto = impostoDeRenda + inss + fgts;
    double salarioLiquido = sInicial - totalDeDesconto;

    print(
        "Salario Inicial = $sInicial Reais\n|INSS = $inss|FGTS = $fgts|IR = - $taxaDeDesconto = $impostoDeRenda\nValor de desconto = $totalDeDesconto ");
  } else if (sInicial <= 1500 && sInicial > 900) {
    taxaDeDesconto = 10;
    totalDeDesconto = impostoDeRenda + inss + fgts;
    double salarioLiquido = sInicial - totalDeDesconto;

    print(
        "Salario Inicial = $sInicial Reais\n|INSS = $inss|FGTS = $fgts|IR = - $taxaDeDesconto = $impostoDeRenda\nValor de desconto = $totalDeDesconto ");
  } else if (sInicial <= 2500 && sInicial > 1500) {
    taxaDeDesconto = 15;
    totalDeDesconto = impostoDeRenda + inss + fgts;
    double salarioLiquido = sInicial - totalDeDesconto;

    print(
        "Salario Inicial = $sInicial Reais\n|INSS = $inss|FGTS = $fgts|IR = - $taxaDeDesconto = $impostoDeRenda\nValor de desconto = $totalDeDesconto ");
  } else if (sInicial > 2500) {
    taxaDeDesconto = 20;
    totalDeDesconto = impostoDeRenda + inss + fgts;
    double salarioLiquido = sInicial - totalDeDesconto;

    print(
        "Salario Inicial = $sInicial Reais\n|INSS = $inss|FGTS = $fgts|IR = - $taxaDeDesconto = $impostoDeRenda\nValor de desconto = $totalDeDesconto ");
  } else {
    print("VALOR INVALIDO");
  }
}
