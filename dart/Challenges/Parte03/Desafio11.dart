import 'dart:io';

void main() {
  print("Informe um numero");
  var numero1 = stdin.readLineSync()!;
  var n1 = int.parse(numero1);

  var numero2 = stdin.readLineSync()!;
  var n2 = int.parse(numero2);

  int numero = 0;
  if (n1 > n2) {
    for (int i = n2; i <= n1; i++) {
      print("\n$i");
      numero = i + numero;
      if (i == n1) {
        print("Soma = $numero");
      }
    }
  } else if (n2 > n1) {
    for (int i = n1; i <= n2; i++) {
      print("\n$i");
      numero = i + numero;
      if (i == n2) {
        print("Soma = $numero");
      }
    }
  } else {
    print("0");
  }
}
