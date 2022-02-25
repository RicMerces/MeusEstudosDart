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
}
