import 'dart:io';

void main() {
  print("Informe a quantidade de alunos de uma classe");
  var quantidade = stdin.readLineSync()!;
  int qtd = int.parse(quantidade);
  int x = 0;
  var y = 0;
  for (int i = 1; i <= qtd; i++) {
    print("Informe sua idade ");
    var idade = stdin.readLineSync()!;
    int age = int.parse(idade);
    y = age + x;
    x = y;
  }
  var media = y / qtd;
  print("A Media de idade = ${media}");

  if (media >= 60) {
    print("A MAIORIA É IDOSO");
  } else if (media < 60 && media >= 30) {
    print("A MAIORIA É ADULTO");
  } else if (media < 30 && media >= 18) {
    print("A MAIORIA É JOVEM ADULTO");
  } else if (media < 18 && media >= 14) {
    print("A MAIORIA É ADOLESCENTE");
  } else if (media < 14) {
    print("CRIANÇAS");
  }
}
