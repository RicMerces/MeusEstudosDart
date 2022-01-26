import 'dart:io';

void main() {
  quantidadeDeAlunos();
}

String informeDados(List alunos) {
  print("Informe seu nome ");
  var nome = stdin.readLineSync()!;
  alunos.add(nome);
  calcularMedia();
  return nome;
}

int quantidadeDeAlunos() {
  List alunos = [];
  for (int i = 0; i < 10; i++) {
    informeDados(alunos);
  }
}
