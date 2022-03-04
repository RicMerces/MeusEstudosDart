abstract class Compromissos {
  Compromissos({required this.data, required this.duracao});

  String? data;
  int? duracao;
  List participantes = [];

  List adicionarParticipante(String nome) {
    participantes.add(nome);
    return participantes;
  }

  String toString() {
    return 'DATA : $data\nDuração : $duracao H';
  }
}
