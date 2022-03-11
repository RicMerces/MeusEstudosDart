import 'Cadastro.dart';

class Professor extends Cadastro {
  Professor(String nome, int telefone, String lugar, this.titulo)
      : super(nome: nome, telefone: telefone, nacionalidade: lugar);
  String? titulo;
}
