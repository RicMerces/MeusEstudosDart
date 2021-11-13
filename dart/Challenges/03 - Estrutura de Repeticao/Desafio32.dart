import 'dart:io';

void main() {
  print("Informe o numero que você quer descobrir o fatorial");
  var fatorial = stdin.readLineSync()!;
  int fat = int.parse(fatorial);
  int x = 1;
  int y = 2;
  int fact = 0;

  for (int i = 1; i <= fat; i++) {
    if (i == 1) {
      fact = x;
    } else {
      fact = x * y;
      x = fact;
      y++;
    }
  }
  print("$fat ! = $fact");
}
