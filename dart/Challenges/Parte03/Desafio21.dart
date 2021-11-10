import 'dart:io';

void main() {
  int nP = 4;
  int r = 0;
  int x = 4;
  while (nP % 2 == 0 || x > 2) {
    if (r == 0) {
      print("Informe um numero");
    } else {
      print("o numero $nP não é primo, informe outro");
    }
    var numero = stdin.readLineSync()!;
    nP = int.parse(numero);
    r++;

    if (nP % 2 != 0) {
      var x = 0;
      for (int i = 1; i <= nP; i++) {
        if (nP % i == 0) {
          x++;
          print(x);
        }
      }
    } else {
      x++;
    }
  }
  print("O NUMERO $nP é PRIMO !");
}
