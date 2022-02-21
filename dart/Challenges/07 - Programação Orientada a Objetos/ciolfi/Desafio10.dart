void main() {}

class bombaDeCombustivel {
  bombaDeCombustivel({required this.tipoCombustivel, required this.qtdLitro});

  String tipoCombustivel;
  double valorLitro = 0;
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
    return combustivel;
  }

  double alterarQtdCombustivel(double qtd) {
    qtd = qtdLitro;
    return qtd;
  }
}
