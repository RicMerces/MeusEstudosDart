import 'Veiculo.dart';

class VeiculoDePasseio extends Veiculo {
  VeiculoDePasseio(String placa, int ano, double valor)
      : super(placa: placa, anoDeFabricacao: ano, valor: valor);

  int? _qtdPassageiros;
  double? _capacidadeP;
}
