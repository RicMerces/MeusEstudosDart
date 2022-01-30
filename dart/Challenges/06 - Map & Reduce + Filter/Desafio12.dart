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

  String resultado = '';
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

    resultado = '${verificar(alertAlunos, nome, id, h)}';
  }

  resultado =
      'A lista de alunos da turma = $dadosAlunos\nAlunos que estão abaixo da media de 1.50m com mais de 13 anos $resultado e quantidade  ${alertAlunos.length}';

  print(resultado);
  return resultado;
}

List verificar(List alunos, String nome, int id, double h) {
  if (id >= 13 && h < 1.50) {
    alunos.add(nome);
  }
  return alunos;
}
