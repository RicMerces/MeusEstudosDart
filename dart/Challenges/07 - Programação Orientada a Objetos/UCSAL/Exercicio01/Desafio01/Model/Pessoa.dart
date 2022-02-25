import 'Veiculo.dart';

class Pessoa {
  Pessoa(
      {required this.nome,
      required this.cpf,
      required this.cep,
      required this.telefone,
      required this.v});

  String? nome;
  int? cpf;
  String? cep;
  int? telefone;
  Veiculo v;
  List seusVeiculos = [];

  List adicionarVeiculo(Veiculo v) {
    print("Carro adicionado a sua Garagem $nome");
    seusVeiculos.add(v);
    return seusVeiculos;
  }

  String toString() {
    return 'Veiculos de $nome\n$seusVeiculos';
  }
}
