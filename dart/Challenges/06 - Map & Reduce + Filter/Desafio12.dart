import 'dart:io';

void main() {
  informeDadosAlunos();
}

String informeDadosAlunos() {
  Map dadosAlunos = {};
  List idades = [];
  List nomes = [];
  List alturas = [];

  List alertAlunos = [];

  for (int i = 0; i < 4; i++) {
    print("Informe nome do aluno ");
    var nome = stdin.readLineSync()!;

    print("Informe idade de $nome ");
    var idade = stdin.readLineSync()!;
    int id = int.parse(idade);

    print("Informe a altura de $nome em m");
    var altura = stdin.readLineSync()!;
    double h = double.parse(altura);

    nomes.add(nome);
    idades.add(id);
    alturas.add(h);

    dadosAlunos[nome] = ' | Idade = $idade | Altura = $h | ';

    verificar(alertAlunos, nome, id, h);
  }
}

List verificar(List alunos, String nome, int id, double h) {
  return alunos;
}
