import 'dart:io';

void main() {
  List lista = [];
  double soma = 0;
  double y = 0;
  double multi = 0;
  double w = 1;
  print("Informe 5 numeros inteiros");
  for (int i = 0; i < 5; i++) {
    var x = stdin.readLineSync()!;
    lista.add(int.parse(x));

    if (i == 4) {
      for (int z = 0; z < 5; z++) {
        soma = lista[z] + y;
        y = soma;
        multi = lista[z] * w;
        w = multi;
      }
    }
  }
  print("SOMA = $soma");
  print("MULTI = $multi");
  print("LISTA = $lista");
}
