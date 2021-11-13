import 'dart:io';

void main0() {
  print("Informe um numero");
  var n = stdin.readLineSync()!;
  double numero = double.parse(n);
  if (numero is double) {
    print(" Decimal");
  } else {
    print(" Inteiro");
  }
}
