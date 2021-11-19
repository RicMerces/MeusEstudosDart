import 'dart:io';

void main() {
  print("Informe seu nome");
  String nome = stdin.readLineSync()!;
  double dist = 0;

  double max = 0;
  double min = 0;

  double x = 0;
  double media = 0;

  for (int i = 1; i <= 5; i++) {
    print("Informe qual foi a distancia no $iº Salto");
    var distancia = stdin.readLineSync()!;
    dist = double.parse(distancia);

    if (dist > max) {
      max = dist;
    }

    if (i == 1 || dist < min) {
      min = dist;
    }

    media = dist + x;
    x = media;
  }

  print("\n$nome");
  print("Nota maxima = $max m");
  print("Nota minima = $min m");
  print("Media = ${media / 5} m");
}
