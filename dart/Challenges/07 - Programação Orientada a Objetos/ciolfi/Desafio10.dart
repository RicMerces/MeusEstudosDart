void main() {}

class bombaDeCombustivel {
  String tipoCombustivel;
  double valorLitro;
  double qtdLitro;

  double abastecerPorValor() {}

  double abastecerPorLitro() {}

  double alterarValor() {}

  String alterarCombustivel(String combustivel) {
    if (combustivel.toUpperCase() == 'GASOLINA') {
    } else if (combustivel.toUpperCase() == 'ALCOOL') {
    } else if (combustivel.toUpperCase() == 'DIESEL') {
    } else if (combustivel.toUpperCase() == 'ELETRICIDADE') {}
  }

  double alterarQtdCombustivel() {}
}
