import 'dart:io';

void main() {
  List altetas = [];

  double w = 0;
  double z = 0;
  double v = 0;

  for (int i = 0; i < 2; i++) {
    print("Informe seu nome");
    String nome = stdin.readLineSync()!;

    for (int x = 1; x <= 4; x++) {
      print("Informe seu $x º salto");
      var n = stdin.readLineSync()!;
      w = double.parse(n);
      z = w + v;
      v = z;
    }

    double media = z / 4;

    String resultado = "O resultado final de $nome = $media";

    altetas.add(resultado);

    print(altetas);
  }
}
