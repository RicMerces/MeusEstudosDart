import 'dart:io';

void main() {
  print("Informe dois valores");
  var n1 = stdin.readLineSync()!;
  var n2 = stdin.readLineSync()!;
  double numero01 = double.parse(n1);
  double numero02 = double.parse(n2);

  if (numero01 > numero02) {
    print("O numero maior é $numero01");
  } else if (numero02 > numero01) {
    print("O numero maior é $numero02");
  } else {
    print("Os numeros são iguais a $numero01");
  }
}
