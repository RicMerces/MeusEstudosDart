import 'Funcionario.dart';

class Infermeira extends Funcionario {
  Infermeira(String nome, int idade, int matricula, this.cre)
      : super(nome: nome, idade: idade, matricula: matricula);

  String? cre;

  @override
  String toString() {
    // TODO: implement toString
    return '----------Infermeira----------\n${super.toString()}\nCRE : $cre';
  }
}
