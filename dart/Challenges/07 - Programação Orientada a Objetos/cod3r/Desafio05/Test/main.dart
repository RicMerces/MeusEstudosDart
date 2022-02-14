import '../Model/ContaCorrente.dart';
import 'dart:io';

main() {
  print("Olá informe seu nome");
  var nome = stdin.readLineSync()!;
  print("Informe o numero de sua conta, ${nome}");
  var numero = stdin.readLineSync()!;
  ContaCorrente conta = new ContaCorrente(nome, int.parse(numero));

  String finish = '';
  while (finish.toLowerCase() != 'sim') {
    if (conta.saldo <= 0) {
      print(
          "Olá ${conta.nomeDoCorrentista}, seu saldo atual é de R\$ ${conta.saldo}, Deseja realizar deposito ?");
      String x = stdin.readLineSync()!;

      if (x.toLowerCase() == 'sim') {
        print("Depositara quantos Reais ?");
        var dinheiro = stdin.readLineSync()!;
        conta.depositar(double.parse(dinheiro));
      }
    } else {
      print(
          "Olá ${conta.nomeDoCorrentista}, seu saldo atual é de R\$ ${conta.saldo}, Deseja realizar um deposito OU sacar dinheiro ?");
      String x = stdin.readLineSync()!;

      if (x.toLowerCase() == 'depositar') {
        print("Depositara quantos Reais ?");
        var dinheiro = stdin.readLineSync()!;
        conta.depositar(double.parse(dinheiro));
      } else if (x.toLowerCase() == 'sacar') {
        print(
            "Realizar saque de quantos Reais ? Lembrando que seu saldo é de ${conta.saldo}");
        var dinheiro = stdin.readLineSync()!;
        while (double.parse(dinheiro) > conta.saldo) {
          print(
              "Você não tem saldo suficiente para efetuar esse saque, por favor informe outro valor !");
          dinheiro = stdin.readLineSync()!;
        }
        conta.sacar(double.parse(dinheiro));
      } else {
        print("Essa operacao não existe !");
      }
    }

    print("Finalizar Operaçoes ? \n[DIGITE SIM PARA FINALIZAR]");
    finish = stdin.readLineSync()!;
  }

  print(
      "\n-------------------------------SUA CONTA-------------------------------\n$conta\n-----------------------------------------------------------------------");
}
