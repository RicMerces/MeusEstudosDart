import 'dart:io';
import 'dart:math';
import '../model/Cliente.dart';
import '../model/Produto.dart';
import '../model/Venda.dart';
import '../model/Venda_item.dart';

main() {
  var venda = new Venda(
      cliente: Cliente(nome: 'Neymar JR', cpf: '598-802-709-41'),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 10,
            produto: Produto(
                codigo: 1, nome: 'Caneta Bic', preco: 20.00, desconto: 0.25)),
        VendaItem(
            quantidade: 3,
            produto: Produto(
                codigo: 2, nome: 'Caderno', preco: 10.90, desconto: 0.2)),
        VendaItem(
            quantidade: 6,
            produto:
                Produto(codigo: 3, nome: 'Farofa', preco: 2.50, desconto: 0.1))
      ]);

  print("O valor total da venda é : R\$$venda.valorTotal");

  print("Nome do primeiro produto é: ${venda.itens[0].produto.nome}")
}
