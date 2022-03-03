import '../../Exercicio01/Desafio01/Model/Veiculo.dart';

class Comprador {
  int? _cpf;
  String? _nome;
  int? _cep;
  int? _telefone;

  List<Veiculo> veiculos = [];

  String? get nome {
    return this._nome;
  }

  void set nome(String? n) {
    this._nome = n;
  }

  int? get cpf {
    return this._cpf;
  }

  void set cpf(int? n) {
    this._cpf = n;
  }

  int? get cep {
    return _cep;
  }

  void set cep(int? n) {
    this._cep = n;
  }

  int? get telefone {
    return this._telefone;
  }

  void set telefone(int? n) {
    this._telefone = telefone;
  }

  List adicionarVeiculo(Veiculo v) {
    veiculos.add(v);
    return veiculos;
  }
}
