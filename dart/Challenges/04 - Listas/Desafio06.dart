import 'dart:io';

void main() {
  List mediaDaTurma = [];
  double media = 0;
  double mediaFinalDaTurma = 0;
  List alunosAprovD = [];
  double x = 0;
  for (int i = 0; i < 10; i++) {
    print("Aluno ${i + 1} informe suas 4 notas de cada bimestre");
    var nota01 = stdin.readLineSync()!;
    var nota02 = stdin.readLineSync()!;
    var nota03 = stdin.readLineSync()!;
    var nota04 = stdin.readLineSync()!;
    int n1 = int.parse(nota01);
    int n2 = int.parse(nota02);
    int n3 = int.parse(nota03);
    int n4 = int.parse(nota04);

    media = ((n1 + n2) + (n3 + n4)) / 4;
    mediaDaTurma.add(media);

    if (media >= 7) {
      alunosAprovD.add(media);
    }

    mediaFinalDaTurma = media + x;
    x = mediaFinalDaTurma;
  }

  print("A NOTA DA TURMA = $mediaDaTurma");
  print("Quantidade de alunos aprovados direto = ${alunosAprovD.length}");
  print("Medias dos alunos ja aprovados = $alunosAprovD");
  print("A MEDIA FINAL DA TURMA = ${mediaFinalDaTurma / mediaDaTurma.length}");
}
