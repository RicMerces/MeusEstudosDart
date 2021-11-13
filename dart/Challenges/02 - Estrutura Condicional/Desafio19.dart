import 'dart:io';

void main() {
  print("Informe um valor numerico > 1000");
  var numero = stdin.readLineSync()!;
  var numero1 = stdin.readLineSync()!;
  var numero2 = stdin.readLineSync()!;
  int n = int.parse(numero);
  int n2 = int.parse(numero1);
  int n3 = int.parse(numero2);

  String numeroCompleto = numero + numero1 + numero2;
  int compN = int.parse(numeroCompleto);

  if (compN >= 1000 || compN <= -1000) {
    print("VALOR INVALIDO");
  } else {
    print("NUMERO VALIDO $compN");
    if (n == 0 && n2 == 0) {
      print("| $n2 Dezenas | $n3 Unidades");
    } else if (n == 0) {
      print(" $n3 Unidades");
    } else if (n2 < 0 || n3 < 0) {
      print("VALOR INVALIDO");
    } else {
      print("$n Centenas  | $n2 Dezenas | $n3 Unidades");
    }
  }
}
