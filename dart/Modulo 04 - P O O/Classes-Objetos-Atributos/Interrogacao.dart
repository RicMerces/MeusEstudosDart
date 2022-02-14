void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Ricardo', idade: 20);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa? pessoa2;
  print(pessoa2?.nome);
  print(pessoa2?.idade);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
