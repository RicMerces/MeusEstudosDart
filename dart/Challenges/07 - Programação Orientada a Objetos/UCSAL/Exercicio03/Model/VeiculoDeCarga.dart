import 'Veiculo.dart';

class VeiculoDeCarga extends Veiculo {
  VeiculoDeCarga(String placa, int ano, double valor)
      : super(placa: placa, anoDeFabricacao: ano, valor: valor);

  double? _capacidadeC;
  int? _qtdEixos;
  double? _tanque;
}
