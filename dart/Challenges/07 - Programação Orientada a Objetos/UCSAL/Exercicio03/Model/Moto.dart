import 'Veiculo.dart';

class Moto extends Veiculo {
  Moto(String placa, int ano, double valor)
      : super(placa: placa, anoDeFabricacao: ano, valor: valor);

  String? _categoria;
  int? _cilindradas;

  String? get categoria {
    return _categoria;
  }

  void set categoria(String? c) {
    this._categoria = c;
  }

  int? get cinlindradas {
    return _cilindradas;
  }

  void set cilindradas(int? c) {
    this._cilindradas = c;
  }
}
