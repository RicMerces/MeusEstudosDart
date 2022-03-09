import '../Model/Apartamento.dart';
import '../Model/Casa.dart';
import '../Model/Imobiliaria.dart';
import '../Model/Imovel.dart';

void main() {
  Imovel x01 = new Apartamento(123123, 'Salvador', 'Imbui', 300000, 40, 5.21);

  Imovel x02 = new Casa(77778888, 'Lauro de Freitas', 'Vilas', 1000000, 300);

  Imobiliaria i = new Imobiliaria();

  i.adicionarImovel(x01);
  i.adicionarImovel(x02);

  print(i.imoveis);
  print(i.somenteCodigo);
  print(i.bairroValor);
}
