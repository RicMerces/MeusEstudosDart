import 'dart:io';

void main() {
  int nDeParcelas = 1;
  int juros = 0;
  while (nDeParcelas != 0) {
    print("Informe o valor do produto que você deseja comprar");
    var valorProduto = stdin.readLineSync()!;
    double productValue = double.parse(valorProduto);

    print("Informe o valor de parcelas que você deseja dividir");
    var numeroDeParcelas = stdin.readLineSync()!;
    int nDeParcelas = int.parse(numeroDeParcelas);

    while (nDeParcelas > 0) {
      print("Informe o valor de parcelas que você deseja dividir");
      var numeroDeParcelas = stdin.readLineSync()!;
      nDeParcelas = int.parse(numeroDeParcelas);
    }
    if (nDeParcelas > 1 && nDeParcelas <= 3) {
      juros = 10;
    }
    if (nDeParcelas > 3 && nDeParcelas <= 6) {
      juros = 15;
    }
    if (nDeParcelas > 6 && nDeParcelas <= 9) {
      juros = 20;
    }
    if (nDeParcelas > 9 && nDeParcelas <= 12) {
      juros = 25;
    }
    if (nDeParcelas > 12) {
      juros = 30;
    }
    print(
        "Valor da divida = $productValue Reais\nValor dos Juros = $juros\nQuantidade de Parcelas = $nDeParcelas ");
  }
}
