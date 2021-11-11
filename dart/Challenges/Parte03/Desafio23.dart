import 'dart:io';

void main() {
  print("Informe um valor ");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  var z = 1;

  for (int i = 1; i <= n; i++) {
    while (z <= i) {
      if (i % z == 0) {
        print("$i e $z");
        z++;
      }
    }
  }
}
