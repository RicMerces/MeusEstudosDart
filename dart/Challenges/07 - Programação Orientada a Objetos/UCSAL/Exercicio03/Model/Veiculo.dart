class Veiculo {
  Veiculo(
      {required this.placa,
      required this.anoDeFabricacao,
      required this.valor});

  String? placa;
  int? anoDeFabricacao;
  double? valor;

  String toString() {
    return 'Placa do Veiculo = $placa\nAno de Fabricação = $anoDeFabricacao\nValor = R\$ $valor';
  }
}
