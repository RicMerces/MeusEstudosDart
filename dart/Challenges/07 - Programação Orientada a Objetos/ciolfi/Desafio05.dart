import 'dart:io';

class ContaCorrente {
  ContaCorrente({required this.nome, required this.numeroDaConta});

  int numeroDaConta;
  String nome;
  double _saldo = 0;

  double get saldo {
    return _saldo;
  }

  void set saldo(double saldo) {
    this._saldo = saldo;
  }

  double sacar(double valor) {
    print("Saque efetuado");
    saldo -= valor;
    return saldo;
  }

  double depositar(double valor) {
    print("Deposito efetuado");
    saldo += valor;
    return saldo;
  }
}

void main() {
  ContaCorrente c = new ContaCorrente(nome: 'Ricardo', numeroDaConta: 12312313);

  c.depositar(30);
  c.sacar(20);
  print(c.saldo);
}
