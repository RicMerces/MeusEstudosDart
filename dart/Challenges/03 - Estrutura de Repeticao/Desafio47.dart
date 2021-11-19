import 'dart:io';

void main() {
  print("Informe seu nome");
  String nome = stdin.readLineSync()!;
  double x = 0;
  double media = 0;
  double n = 0;

  double max = 0;
  double min = 0;

  for (int i = 1; i <= 4; i++) {
    print("Informe sua nota $iº bimestre");
    var nota = stdin.readLineSync()!;
    n = double.parse(nota);

    if (max < n) {
      max = n;
    }

    if (i == 1 || min > n) {
      min = n;
    }

    media = n + x;
    x = media;
  }

  print("\n$nome");
  print("Média = ${media / 4}");
  print("Maxima = $max");
  print("Minima = $min");
}
