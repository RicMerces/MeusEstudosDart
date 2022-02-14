void main() {
  //Criando pessoa com construtores
  Pessoa pessoa = Pessoa(nome: 'Ricardo', idade: 20);
  print(pessoa.nome);
  print(pessoa.idade);
  pessoa.casar();
  print(pessoa.casado);
  pessoa.dinheiro = 300;
  print(pessoa.dinheiro);

  //Nullable
  // print(pessoa.nomeSecreto); //Flutter
  // print(pessoa.nomeSecreto); //Null

  //Para resolver problemas
  String? nome = pessoa.nomeSecreto;
  if (nome != null) {
    print(nome.toUpperCase());
  }

  if (pessoa.atributo != null) {
    print(pessoa.atributo!.toUpperCase());
  }

  //ou seja os valores podem ser alterados mesmo depois de serem informado um valor
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando $nome com idade $idade");
  }

  //Nullable String
  String? _nomeSecreto = 'Flutter';

  get nomeSecreto {
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      return null;
    }
  }

  String? atributo = 'Java';

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
