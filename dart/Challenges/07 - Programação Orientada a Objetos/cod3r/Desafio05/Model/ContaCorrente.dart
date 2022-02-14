class ContaCorrente {
  int numeroDaConta;
  String nomeDoCorrentista;
  double saldo;

  ContaCorrente(this.nomeDoCorrentista, this.numeroDaConta, {this.saldo = 0});

  String alterarNome(String novoNome) {
    this.nomeDoCorrentista = novoNome;
    return nomeDoCorrentista;
  }

  double depositar(double deposito) {
    this.saldo += deposito;
    return saldo;
  }

  double sacar(double saque) {
    this.saldo -= saque;
    return saldo;
  }

  String toString() {
    return '-----------------------------\nNome :${nomeDoCorrentista}\nNumero da conta : ${this.numeroDaConta}\nSaldo atual = R\$ $saldo\n-----------------------------';
  }
}
