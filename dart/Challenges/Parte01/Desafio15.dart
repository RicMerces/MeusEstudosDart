import 'dart:io';

void main() {
  print("Informe seu salario bruto");
  var salarioInicial = stdin.readLineSync()!;
  double salario0 = double.parse(salarioInicial);

  print("a) Salario Bruto :  $salario0 Reais");

  double inss = salario0 * (0.08);
  double sindicato = salario0 * (0.05);
  double ir = salario0 * (0.11);

  double salarioLiquido = salario0 - (inss + sindicato + ir);

  print("b) INSS : $inss");
  print("c) Sindicato : $sindicato");
  print("d) Salario Liquido : $salarioLiquido");
}
