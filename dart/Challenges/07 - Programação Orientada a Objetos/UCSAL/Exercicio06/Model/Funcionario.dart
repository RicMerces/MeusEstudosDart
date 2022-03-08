class Funcionario {
  Funcionario(
      {required this.nome, required this.idade, required this.matricula});

  String? nome;
  int? idade;
  int? matricula;

  String toString() {
    return 'Nome : $nome\nIdade : $idade\nMatricula : $matricula';
  }
}
