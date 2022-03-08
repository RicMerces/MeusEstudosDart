import 'Funcionario.dart';

class Medico extends Funcionario {
  Medico(String nome, int idade, int matricula, this.crm)
      : super(nome: nome, idade: idade, matricula: matricula);

  String? crm;

  @override
  String toString() {
    return '----------Medico----------\n${super.toString()}\nCRE : $crm';
  }
}
