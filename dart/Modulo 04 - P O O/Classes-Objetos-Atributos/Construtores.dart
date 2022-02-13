void main() {
  //Criando pessoa com construtores
  Pessoa pessoa = Pessoa(nome: 'Ricardo', idade: 20);
  print(pessoa.nome);
  print(pessoa.idade);
  pessoa.casar();
  print(pessoa.casado);

  //Criando pessoa casada com construtores
  Pessoa pessoa02 = new Pessoa.casada(nome: 'Jose', idade: 30);
  print(pessoa02.nome);
  print(pessoa02.idade);
  print(pessoa02.casado);

  //Criando pessoa solteira com construtores
  Pessoa pessoa03 = new Pessoa.solteira(nome: 'Nathan', idade: 21);
  print(pessoa03.nome);
  print(pessoa03.idade);
  print(pessoa03.casado);
}

class Pessoa {
  //Construtor
  //Parametros nomeados obrigatorios

  // Pessoa({required String nome, required int idade}) {
  //   this.nome = nome;
  //   this.idade = idade;
  // }

  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando $nome com idade $idade");
  }

  //Ações dentro do construtor
  Pessoa.casada(
      {required this.nome, required this.idade, this.casado = false}) {
    casado = true;
  }

  Pessoa.solteira(
      {required this.nome, required this.idade, this.casado = false}) {
    casado = false;
  }

  String nome;
  int idade;
  bool casado;

  bool casar() {
    this.casado = true;
    return casado;
  }
}
