import 'dart:io';

void main() {
  valorPrestacao();
}

double valorPrestacao() {
  double valorMensal;
  print("Informe o valor do produto");
  var valor = stdin.readLineSync()!;
  double vp = double.parse(valor);

  print("Informe em quantas vezes você dividiu");
  var vezes = stdin.readLineSync()!;
  int xp = int.parse(vezes);

  valorMensal = calcularValorMensal(vp, xp);

  return valorMensal;
}

double calcularValorMensal(double vp, int xp) {}
