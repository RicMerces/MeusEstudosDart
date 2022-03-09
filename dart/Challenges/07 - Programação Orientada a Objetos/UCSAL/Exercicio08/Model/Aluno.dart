import 'Cadastro.dart';

class Aluno extends Cadastro {
  Aluno(String nome, int telefone, String nacionalidade, this.anoDeNascimento,
      this.escolaDeOrigem)
      : super(nome: nome, telefone: telefone, nacionalidade: nacionalidade);

  int? anoDeNascimento;
  String? escolaDeOrigem;
}
