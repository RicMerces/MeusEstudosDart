import 'Comprador.dart';

class Veiculo {
  Veiculo(
      {required this.ano,
      required this.placa,
      required this.valor,
      required this.comprador});

  String? placa;
  int? ano;
  double? valor;
  Comprador comprador;
}
