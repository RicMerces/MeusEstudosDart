import 'dart:io';

void main() {
  print("Informe o numero de CDS");
  var cd = stdin.readLineSync()!;
  int nCD = int.parse(cd);

  double x = 0;
  double y = 0;
  for (int i = 1; i <= nCD; i++) {
    print("Informe o valor do CD");
    var preco = stdin.readLineSync()!;
    double valor = double.parse(preco);

    y = valor + x;
    x = y;
  }

  print("A MEDIA DE VALOR DOS CDS = Reais ${y / nCD}");
}
