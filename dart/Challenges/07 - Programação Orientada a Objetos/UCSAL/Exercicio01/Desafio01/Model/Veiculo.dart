class Veiculo {
  Veiculo(
      {required this.placa,
      required this.modelo,
      required this.ano,
      required this.valor});

  String? placa;
  String? modelo;
  int? ano;
  double? valor;

  @override
  String toString() {
    return '- Modelo : $modelo\n- Placa : $placa\n- Ano : $placa\n- Valor : R\$ $valor';
  }
}
