import 'dart:io';

void main() {
  imprimir();
}

String imprimir() {
  String valorFinal = '';

  print("Informe o valor a ser pago");

  print("Informe o prazo para ser entregue ");
  var day = stdin.readLineSync()!;

  prazo(day);

  print("Em quantas vezes X você parcelou ");
  var parcelas = stdin.readLineSync()!;
  parcelamento(int.parse(parcelas));

  return valorFinal;
}

double parcelamento(int x) {}
