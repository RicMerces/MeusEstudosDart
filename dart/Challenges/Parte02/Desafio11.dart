import 'dart:io';

void main() {
  print("Informe seu Salario");
  var salario = stdin.readLineSync()!;
  double sal = double.parse(salario);
  if (sal < 280 && sal >= 0) {
    double salarioNovo = sal + (sal * 0.2);
    print("Seu salario novo é de $salarioNovo Reais, obteve um percentual de aumento de 20%");
  } else if (sal >= 280 && sal < 700) {
    double salarioNovo = sal + (sal * 0.15);
    print("Seu salario novo é de $salarioNovo Reais, obteve um percentual de aumento de 15%");
  } else if (sal >= 700 && sal < 1500) {
    double salarioNovo = sal + (sal * 0.1);
    print("Seu salario novo é de $salarioNovo Reais, obteve um percentual de aumento de 10%");
  } else if (sal < 0) {
    print("Você esta devendo dinheiro, obteve um percentual de aumento de 0%");
  } else {
    double salarioNovo = sal + (sal * (5 / 100));
    print("Seu salario novo é de $salarioNovo Reais, obteve um percentual de aumento de 5%");
  }
}
