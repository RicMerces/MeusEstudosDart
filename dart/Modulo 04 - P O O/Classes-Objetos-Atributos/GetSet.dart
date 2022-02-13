void main() {
  //Criando pessoa com construtores
  Pessoa pessoa = Pessoa(nome: 'Ricardo', idade: 20);
  print(pessoa.nome);
  print(pessoa.idade);
  pessoa.casar();
  print(pessoa.casado);
  pessoa.dinheiro = 300;
  print(pessoa.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando $nome com idade $idade");
  }

  String nome;
  int idade;
  bool casado;
  double? _dinheiro;

  bool casar() {
    this.casado = true;
    return casado;
  }

  void set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor < 100000) {
      print('Modificando dinheiro');
      this._dinheiro = valor;
    }
  }

  double? get dinheiro {
    return this._dinheiro;
  }
}
