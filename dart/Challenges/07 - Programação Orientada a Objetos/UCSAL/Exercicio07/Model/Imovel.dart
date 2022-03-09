class Imovel {
  Imovel(
      {required this.codigo,
      required this.endereco,
      required this.bairro,
      required this.valor});

  int? codigo;
  String? endereco;
  String? bairro;
  double? valor;

  double? verificarImovel() {
    if (this.valor! < 0) {
      this.valor = 0;
    }
    return this.valor;
  }

  String toString() {
    return 'codigo : $codigo\nCEP : $bairro, $endereco\n Valor = R\$ $valor';
  }
}
