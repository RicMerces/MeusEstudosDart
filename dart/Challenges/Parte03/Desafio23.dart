import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);

  for (int i = 1; i <= n; i++) {
    for (int z = 1; z <= i;) {
      if (i % z == 0) {
        z++;
        print(i);
      }
    }
  }
}
