void main() {
  bombaDeCombustivel b =
      new bombaDeCombustivel(tipoCombustivel: 'GASOLINA', qtdLitro: 20);
  b.alterarCombustivel('GASOLINA');
  print(b.abastecerPorLitro(40));
  print(b.abastecerPorLitro(10));

  print(b.abastecerPorValor(72.1));
  b.alterarCombustivel('ALCOOL');
  print(b.abastecerPorLitro(40));
  print(b.abastecerPorLitro(10));
}

class bombaDeCombustivel {
  bombaDeCombustivel({required this.tipoCombustivel, required this.qtdLitro});

  String tipoCombustivel;
  double valorLitro = 1;
  double qtdLitro;

  double abastecerPorValor(double valor) {
    this.qtdLitro = valor / valorLitro;
    return qtdLitro;
  }

  double abastecerPorLitro(double litro) {
    qtdLitro = litro;
    double valorFinal = valorLitro * qtdLitro;
    return valorFinal;
  }

  double alterarValor() {
    if (tipoCombustivel.toUpperCase() == 'GASOLINA') {
      valorLitro = 7.21;
    } else if (tipoCombustivel.toUpperCase() == 'ALCOOL') {
      valorLitro = 6.34;
    } else if (tipoCombustivel.toUpperCase() == 'DIESEL') {
      valorLitro = 5.632;
    }
    return valorLitro;
  }

  String alterarCombustivel(String combustivel) {
    this.tipoCombustivel = combustivel;
    alterarValor();
    return combustivel;
  }

  double alterarQtdCombustivel(double qtd) {
    qtd = qtdLitro;
    return qtd;
  }
}
