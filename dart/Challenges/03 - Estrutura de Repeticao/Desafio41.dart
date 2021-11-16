import 'dart:io';

void main() {
  int nDeParcelas = 1;
  double juros = 0;
  while (nDeParcelas != 0) {
    print("Informe o valor do produto que você deseja comprar");
    var valorProduto = stdin.readLineSync()!;
    double productValue = double.parse(valorProduto);

    print("Informe o valor de parcelas que você deseja dividir");
    var numeroDeParcelas = stdin.readLineSync()!;
    nDeParcelas = int.parse(numeroDeParcelas);

    while (nDeParcelas < 0) {
      print("Informe o valor de parcelas que você deseja dividir");
      var numeroDeParcelas = stdin.readLineSync()!;
      nDeParcelas = int.parse(numeroDeParcelas);
    }
    if (nDeParcelas > 1 && nDeParcelas <= 3) {
      juros = productValue * (0.1);
    }
    if (nDeParcelas > 3 && nDeParcelas <= 6) {
      juros = productValue * (0.15);
    }
    if (nDeParcelas > 6 && nDeParcelas <= 9) {
      juros = productValue * (0.2);
    }
    if (nDeParcelas > 9 && nDeParcelas <= 12) {
      juros = productValue * (0.25);
    }
    if (nDeParcelas > 12) {
      juros = productValue * (0.3);
    }
    print(
        "Valor da divida = $productValue Reais\nValor dos Juros = $juros\nQuantidade de Parcelas = $nDeParcelas\nValor de parcela = ${(productValue / nDeParcelas)} Reais");
  }
}
