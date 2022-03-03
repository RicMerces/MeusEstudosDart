import '../model/Comprador.dart';
import '../Model/Veiculo.dart';

void main() {
  Veiculo v =
      new Veiculo(placa: '123123d', anoDeFabricacao: 2002, valor: 10000);

  print(v);

  Comprador c = new Comprador();
  c.nome = 'Ricardo';
  c.cpf = 1213123123;
  c.cep = 3123121231;
  c.telefone = 123123132;

  print(c);
}
