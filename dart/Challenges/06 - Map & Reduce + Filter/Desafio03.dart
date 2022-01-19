import 'dart:io';

void main() {
  print(imprimir());
}

String imprimir() {
  String nome = informeNome();
  print("Bem Vindo ao calculadora de notas $nome");

  List resultados = informeNotas();

  double media = calcularMedia(resultados);

  String passou = verAprovacao(media);

  return '$nome, Sua média final foi $media, logo você foi $passou';
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

    notas.add(double.parse(nota));
  }
  return notas;
}

double calcularMedia(List l) {
  double r = 0;
  double aux = 0;
  for (int i = 0; i < l.length; i++) {
    r = aux + l[i];
    aux = r;
    if (i == l.length - 1) {
      r = r / l.length;
    }
  }
  return r;
}

String verAprovacao(double media) {
  String valor = '';
  if (media >= 7) {
    valor = 'APROVADO';
  } else {
    valor = 'REPROVADO';
  }
  return valor;
}
