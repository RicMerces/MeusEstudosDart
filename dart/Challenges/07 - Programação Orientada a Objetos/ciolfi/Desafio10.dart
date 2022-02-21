void main() {
  bombaDeCombustivel b =
      new bombaDeCombustivel(tipoCombustivel: 'GASOLINA', qtdLitro: 20);
  b.alterarCombustivel('GASOLINA');
  b.alterarQtdCombustivel(40);
  print(b.abastecerPorLitro());
  b.alterarQtdCombustivel(10);
  print(b.abastecerPorLitro());

  print(b.abastecerPorValor(72.1));
  b.alterarCombustivel('ALCOOL');
  b.alterarQtdCombustivel(40);
  print(b.abastecerPorLitro());
  b.alterarQtdCombustivel(10);
  print(b.abastecerPorLitro());
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

  double abastecerPorLitro() {
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
    qtdLitro = qtd;
    return qtd;
  }
}
