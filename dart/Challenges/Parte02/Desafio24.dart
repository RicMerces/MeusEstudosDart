import 'dart:io';

void main0() {
  print("Informe um numero");
  var n = stdin.readLineSync()!;
  double numero = double.parse(n);

  if (numero % 2 == 0) {
    print("Par");
  } else {
    print("Impar");
  }

  if (numero > 0) {
    print(" Positivo");
  } else if (numero < 0) {
    print(" Negativo");
  } else {
    print(" Zero");
  }

  if (numero is double) {
    print(" Decimal");
  } else {
    print(" Inteiro");
  }
}
