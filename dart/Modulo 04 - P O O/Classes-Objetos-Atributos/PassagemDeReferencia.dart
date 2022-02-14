void main() {
  Pessoa pessoa = Pessoa(nome: 'Ricardo', idade: 20);
  print(pessoa.nome);
  print(pessoa.idade);

  Pessoa pessoa2 = pessoa;
  pessoa.nome = 'Joaquim';
  print(pessoa2.nome);
  print(pessoa2.idade);

//Nesse caso n houve passagem de referencia
  int numero = 10;
  funcao(numero);
  print(numero);
}

void funcao(int x) {
  x = 60;
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
