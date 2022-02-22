void main() {
  contaInvestimento c1 = contaInvestimento(nome: 'Ricardo', numeroDaConta: 59881931);

  c1.

}

class contaInvestimento {
  contaInvestimento({required this.nome, required this.numeroDaConta});

  String nome;
  int numeroDaConta;
  double _saldoAtual = 1000;
  double juros = 0.1;

  double get saldoAtual {
    return _saldoAtual;
  }

  void set saldoAtual(double saldo) {
    this._saldoAtual = saldo;
  }

  double depositar(double valor) {
    print("Deposito realizado !");
    saldoAtual += valor;
    return saldoAtual;
  }

  double sacar(double valor) {
    print("Saque realizado !");
    saldoAtual -= valor;
    return saldoAtual;
  }

  double alterarValorJuros(double juros){
    this.juros = juros;
    return this.juros;
  }


  double adicionarJuros() {
    print("Juros adicionados !");
    saldoAtual -= saldoAtual * juros;
    return saldoAtual;
  }
}
