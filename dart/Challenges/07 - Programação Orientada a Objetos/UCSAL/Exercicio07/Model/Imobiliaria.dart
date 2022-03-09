import 'Imovel.dart';

class Imobiliaria {
  List<Imovel> imoveis = [];
  List somenteCodigo = [];
  List bairroValor = [];

  List listarImoveisPorCodigo(int? codigo) {
    somenteCodigo.add(codigo);
    return somenteCodigo;
  }

  List listarImoveisPorBairroValor(String? bairro, double? valor) {
    bairroValor.add('Bairro : $bairro com o Valor = R\$$valor');
    return bairroValor;
  }

  List adicionarImovel(Imovel i) {
    i.verificarImovel();
    imoveis.add(i);
    listarImoveisPorCodigo(i.codigo);
    listarImoveisPorBairroValor(i.bairro, i.valor);

    return imoveis;
  }
}
