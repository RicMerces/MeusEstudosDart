import 'Materias.dart';

class Professor {
  Professor(
      {required this.nome,
      required this.telefone,
      required this.matricula,
      required this.materias});

  int? matricula;
  int? telefone;
  String? nome;
  List<Materias> materias;

  String toString() {
    return '| Nome do Professor : $nome |\n| Telefone : $telefone |\n| Matricula : $matricula |\n| Materias : $materias';
  }
}
