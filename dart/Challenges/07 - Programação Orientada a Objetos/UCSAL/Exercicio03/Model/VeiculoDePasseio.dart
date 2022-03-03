import 'Veiculo.dart';

class VeiculoDePasseio extends Veiculo {
  VeiculoDePasseio(String placa, int ano, double valor)
      : super(placa: placa, anoDeFabricacao: ano, valor: valor);

  int? _qtdPassageiros;
  double? _capacidadeP;

  int? get qtdPassageiros {
    return this._qtdPassageiros;
  }

  double? get capacidadeP {
    return this._capacidadeP;
  }

  void set qtdPassageiros(int? p) {
    this._qtdPassageiros = p;
  }

  void set capacidadeP(double? c) {
    this._capacidadeP = c;
  }
}
