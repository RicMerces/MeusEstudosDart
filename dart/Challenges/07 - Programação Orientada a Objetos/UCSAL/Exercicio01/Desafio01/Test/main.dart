import '../Model/Pessoa.dart';
import '../Model/Veiculo.dart';
import 'dart:io';

void main() {
  Pessoa p = Pessoa(
      nome: 'Ricardo',
      cpf: 42342342323,
      cep: '123123123-230',
      telefone: 123123123,
      v: Veiculo(placa: 'QSDASD', modelo: 'Palio', ano: 2002, valor: 30123.23));
  p.adicionarVeiculo(p.v);
  p.adicionarVeiculo(
      Veiculo(placa: 'ASDA', modelo: 'Celta', ano: 2010, valor: 1231.31));

  print(p.seusVeiculos);
}
