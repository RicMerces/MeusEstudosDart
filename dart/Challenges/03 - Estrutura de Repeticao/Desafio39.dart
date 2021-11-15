import 'dart:io';

void main() {
  double altura = 0;
  double maisAlto = 0;
  double maisBaixo = 0;
  int numeroDoAlto = 0;
  int numeroDoBaixo = 0;
  for (int i = 1; i <= 20; i++) {
    print("Informe sua altura aluno $i");
    var medida = stdin.readLineSync()!;
    altura = double.parse(medida);

    if (i == 1 || maisBaixo > altura) {
      maisBaixo = altura;
      numeroDoBaixo = i;
    }

    if (maisAlto < altura) {
      maisAlto = altura;
      numeroDoAlto = i;
    }
  }

  print("O aluno mais alto é o numero $numeroDoAlto e sua altura = $maisAlto");
  print(
      "O aluno mais baixo é o numero $numeroDoBaixo e sua altura = $maisBaixo");
}
