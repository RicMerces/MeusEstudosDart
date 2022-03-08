import 'Funcionario.dart';

class ServicoDeLimpeza extends Funcionario {
  ServicoDeLimpeza(String nome, int idade, int matricula)
      : super(nome: nome, idade: idade, matricula: matricula);

  @override
  String toString() {
    // TODO: implement toString
    return '----------Serviço----------\n${super.toString()}';
  }
}
