import 'dart:io';

void main() {
  valorPrestacao();
}

String valorPrestacao() {
  double valorMensal;
  double emCasoDeAtraso;
  String valorFinal = '';
  print("Informe o valor do produto");
  var valor = stdin.readLineSync()!;
  double vp = double.parse(valor);

  print("Informe em quantas vezes você dividiu");
  var vezes = stdin.readLineSync()!;
  int xp = int.parse(vezes);

  valorMensal = calcularValorMensal(vp, xp);

  print("Houve atraso no bagamento ?\nDigite (s) para sim e (n) para não");
  var r = stdin.readLineSync()!;
  if (r.toLowerCase() == 's') {
    emCasoDeAtraso = atrasar(vp, valorMensal);
    valorFinal = '\nO Valor mensal a ser pago = R\$ $emCasoDeAtraso';
  } else if (r.toLowerCase() == 'n') {
    valorFinal = '\nO Valor mensal a ser pago = R\$ $valorMensal';
  }
  print(valorFinal);
  return valorFinal;
}

double calcularValorMensal(double vp, int xp) {
  double vm = vp / xp;
  print("O valor a ser pago por ${xp}X = R\$ $vm ");
  return vm;
}

double atrasar(double cheio, double mensal) {
  double valorFinal = 0;
  print("Você atrasou quantas vezes a mensalidade ?");
  var vezes = stdin.readLineSync()!;
  int x = int.parse(vezes);
  int dia = 0;
  int z = 0;
  for (int i = 1; i <= x; i++) {
    print("Informe o numero dias que você não pagou no $iº atraso");
    var atrasado = stdin.readLineSync()!;
    int dias = int.parse(atrasado);
    dia = dias + z;
    z = dia;

    valorFinal = mensal + ((0.03 * cheio) + ((dias * 0.001) * cheio));
  }
  print("Devido o atraso de $x\X + $dia dias o valor ficou de R\$ $valorFinal");
  return valorFinal;
}
