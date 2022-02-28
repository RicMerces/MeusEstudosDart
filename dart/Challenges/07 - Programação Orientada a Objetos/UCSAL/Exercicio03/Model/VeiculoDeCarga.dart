import 'Veiculo.dart';
import 'Comprador.dart';

class VeiculoDeCarga extends Veiculo {
  VeiculoDeCarga(int ano, String placa, double valor, Comprador comprador)
      : super(ano: ano, placa: placa, valor: valor, comprador: comprador);
}
