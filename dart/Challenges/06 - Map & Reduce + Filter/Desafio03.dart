import 'dart:io';

void main() {
  imprimir();
}

String imprimir() {
  String nome = informeNome();
  print("Bem Vindo ao calculadora de notas $nome");

  List resultados = informeNotas();

  print(resultados);
  return resultados;
}

String informeNome() {
  print("Informe seu nome ");
  String nome = stdin.readLineSync()!;
  return nome;
}

List informeNotas() {
  List notas = [];
  for (int i = 0; i < 4; i++) {
    print("Informe a nota do ${i + 1} Bimestre");
    var nota = stdin.readLineSync()!;

    notas.add(int.parse(nota));
  }
  return notas;
}
