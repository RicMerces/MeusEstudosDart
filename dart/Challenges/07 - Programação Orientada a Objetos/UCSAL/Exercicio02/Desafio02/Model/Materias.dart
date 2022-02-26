class Materias {
  Materias({required this.codigo, required this.nome, required this.carga});

  String? codigo;
  String? nome;
  int? carga;

  @override
  String toString() {
    return '\n{$nome}\n$carga h\n$codigo';
  }
}
