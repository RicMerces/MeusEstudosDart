import '../Model/Materias.dart';
import '../Model/Professores.dart';

void main() {
  Professor p = new Professor(
      nome: 'Marconi',
      telefone: 231223123,
      matricula: 1232,
      materias: <Materias>[
        Materias(codigo: '12312', nome: 'Fisica', carga: 40),
        Materias(codigo: '3213', nome: 'Matematica', carga: 20)
      ]);
}
