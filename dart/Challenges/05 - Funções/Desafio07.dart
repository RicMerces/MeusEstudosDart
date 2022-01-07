import 'dart:io';

void main() {
  valorPagamento();
}

String valorPagamento() {
  print("Determine o valor a ser pago");
  var valor = stdin.readLineSync()!;

  print("Houve atraso ? \nDIGITE:\ns\nn");
  var j = stdin.readLineSync()!;

  while (j != 's' || j != 'n') {
    print("RESPOSTA INVALIDA");
    print("Houve atraso ? \nDIGITE:\ns\nn");
    var j = stdin.readLineSync()!;
  }
  if (j == 's') {
    atrasar();
  }

  return valor;
}
