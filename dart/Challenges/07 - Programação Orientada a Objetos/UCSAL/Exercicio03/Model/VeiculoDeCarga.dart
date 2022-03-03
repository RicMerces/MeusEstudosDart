import 'Veiculo.dart';

class VeiculoDeCarga extends Veiculo {
  VeiculoDeCarga(String placa, int ano, double valor)
      : super(placa: placa, anoDeFabricacao: ano, valor: valor);

  double? _capacidadeC;
  int? _qtdEixos;
  double? _tanque;

  double? get capacidadeC {
    return _capacidadeC;
  }

  void set capacidadeC(double? c) {
    this._capacidadeC = c;
  }

  int? get qtdEixos {
    return this._qtdEixos;
  }

  void set qtdEixos(int? q) {
    this._qtdEixos = q;
  }

  double? get tanque {
    return this._tanque;
  }

  void set tanque(double? q) {
    this._tanque = q;
  }
}
