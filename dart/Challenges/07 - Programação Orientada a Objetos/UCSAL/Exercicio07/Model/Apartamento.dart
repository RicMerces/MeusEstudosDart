import 'Imovel.dart';

class Apartamento extends Imovel {
  Apartamento(int codigo, String endereco, String bairro, double valor,
      this.areaPrivada, this.fracaoIdeal)
      : super(bairro: bairro, endereco: endereco, valor: valor, codigo: codigo);

  double? fracaoIdeal;
  double? areaPrivada;

  @override
  String toString() {
    // TODO: implement toString
    return '\n-----------APARTAMENTO-----------\nArea Privada : $areaPrivada\nFração Ideal : $fracaoIdeal' +
        super.toString();
  }
}
