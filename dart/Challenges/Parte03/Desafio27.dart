import 'dart:io';

void main() {
  print("Informe o numero de turmas");
  var turmas = stdin.readLineSync()!;
  int t = int.parse(turmas);
  var soma = 0;
  int x = 0;
  for (int i = 1; i <= t; i++) {
    int aluno = 0;
    while (aluno > 40 || aluno < 1) {
      print("Informe o numero de alunos da turma $i");
      var n = stdin.readLineSync()!;
      aluno = int.parse(n);
    }
    soma = aluno + x;
    x = soma;
    print("A turma $i tem $aluno alunos");
  }
  print("A Media final de alunos por turma nesse colegio = $soma/t");
}
