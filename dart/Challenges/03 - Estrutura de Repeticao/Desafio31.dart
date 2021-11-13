import 'dart:io';

void main() {
  int produto = 1;
  int np = 0;
  double x = 0;
  double y = 0;

  while (produto != 0) {
    print("Informe qual o produto que você deseja");
    var prod = stdin.readLineSync()!;
    produto = int.parse(prod);
    while (produto < 0) {
      var prod = stdin.readLineSync()!;
      produto = int.parse(prod);
    }
    double preco = 2.20;
    for (int i = 1; i <= produto; i++) {
      if (i == 1) {
        preco = 2.20;
      } else {
        preco += 3.60;
      }
    }
    y = preco + x;
    x = y;
    np++;

    print("Produto $np : $preco");
  }

  print("Total : $y Reais");
  print("\nQuanto você deseja pagar ?");
}
