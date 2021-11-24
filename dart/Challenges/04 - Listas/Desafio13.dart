import 'dart:io';

void main() {
  List listaDeAlunos = [];
  double media = 0;
  double x = 0;
  for (int i = 1; i <= 30; i++) {
    print("Informe quantos anos você tem");
    var idade = stdin.readLineSync()!;
    int id = int.parse(idade);

    print("Informe sua idade");
    var altura = stdin.readLineSync()!;
    double h = double.parse(altura);

    media = h + x;
    x = media;

    if (id >= 13 && h < media / i) {
      listaDeAlunos.add(altura);
    }
  }
  print(
      "O numero de alunos com maior que 13 anos coma altura menor que a mdeia = ${listaDeAlunos..length}");
}
