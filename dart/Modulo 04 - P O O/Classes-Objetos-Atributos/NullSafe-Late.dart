void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Ricardo', idade: 20);
  pessoa1.cpf = '123-342-123-21';
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  //O late automaticamente ja verifica se é um valor null
  late String cpf;

  //Nesse caso a gnt n precisa rodar um valor diversas vezes diferente do getter onde ele so armazena o valor uma vez
  late double temperatura = medirTemperatura();

  double medirTemperatura() {
    print("Mediu temperatura");
    return 36.2;
  }
}
