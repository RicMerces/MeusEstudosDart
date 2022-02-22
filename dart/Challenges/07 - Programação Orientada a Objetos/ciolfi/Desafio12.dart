void main() {}

class contaInvestimento {
  contaInvestimento({required nome, required numeroDaConta});

  String nome;
  int numeroDaConta;
  double _saldoAtual = 1000;
  double juros = 10;

  double get saldoAtual {
    return _saldoAtual;
  }

  void set saldoAtual(saldo) {
    this._saldoAtual = saldo;
  }

  depositar() {}

  sacar() {}

  adicionarJuros() {}
}
