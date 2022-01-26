import 'dart:io';

void main() {
  imprimir();
}

Map informeDados(Map alunos) {
  print("Informe seu nome ");
  var nome = stdin.readLineSync()!;
  double media = calcularMedia();
  alunos['$nome'] = media;

  String 
  return nome;
}

String imprimir() {
  Map alunos = {};
  for (int i = 0; i < 10; i++) {
    informeDados(alunos);
  }
}

double calcularMedia() {
  double j = 0;
  double total = 0;
  for (int i = 0; i < 4; i++) {
    double nota = informarMedia(i);
    total = nota + j;
    j = total;
  }

  return total;
}

double informarMedia(int i) {
  print("Informe sua nota do ${i + 1}º Bimestre");
  var nota = stdin.readLineSync()!;

  return double.parse(nota);
}
