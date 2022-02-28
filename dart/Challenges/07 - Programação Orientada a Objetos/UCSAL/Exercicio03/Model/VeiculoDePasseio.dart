import 'Veiculo.dart';
import 'Comprador.dart';

class VeiculoDePasseio extends Veiculo {
  VeiculoDePasseio(int ano, String placa, double valor, Comprador comprador)
      : super(ano: ano, placa: placa, valor: valor, comprador: comprador);
}
