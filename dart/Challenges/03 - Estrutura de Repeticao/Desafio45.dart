import 'dart:io';

void main() {
  int p = 0;
  for (int i = 1; i <= 10; i++) {
    print("Informe a resposta da questão $i");
    String r = stdin.readLineSync()!;

    if (i == 1 && r.toUpperCase() == 'A') {
      p++;
    }
    if (i == 2 && r.toUpperCase() == 'B') {
      p++;
    }
    if (i == 3 && r.toUpperCase() == 'C') {
      p++;
    }
    if (i == 4 && r.toUpperCase() == 'D') {
      p++;
    }
    if (i == 5 && r.toUpperCase() == 'E') {
      p++;
    }
    if (i == 6 && r.toUpperCase() == 'E') {
      p++;
    }
    if (i == 7 && r.toUpperCase() == 'D') {
      p++;
    }
    if (i == 8 && r.toUpperCase() == 'C') {
      p++;
    }
    if (i == 9 && r.toUpperCase() == 'B') {
      p++;
    }
    if (i == 10 && r.toUpperCase() == 'A') {
      p++;
    }
  }
  print("Você tirou $p");
}
