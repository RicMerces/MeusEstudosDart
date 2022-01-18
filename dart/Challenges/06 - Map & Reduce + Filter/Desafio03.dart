import 'dart:io';

void main() {
  imprimir();
}

String imprimir() {
  String nome = informeNome();
  print("Bem Vindo ao calculadora de notas $nome");

  String resultados = informeNotas();
}

String informeNome() {
  print("Informe seu nome ");
  String nome = stdin.readLineSync()!;
  return nome;
}

String informeNotas() {
  List notas = [];
  for (int i = 0; i < 4; i++) {
    print("Informe a nota do ${i + 1} Bimestre");
  }
}
