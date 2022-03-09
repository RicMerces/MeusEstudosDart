import 'Cadastro.dart';

class Professor extends Cadastro {
  Professor(String nome, int telefone, String lugar, this.titulo)
      : super(nome: nome, telefone: telefone, nacionalidade: lugar);
  String? titulo;

  String? validarTitulo() {
    if (titulo.toUpperCase() is titulacao) {}
  }
}

enum titulacao { ESPECIALISTA, MESTRE, DOUTOR }
