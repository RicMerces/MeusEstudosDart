import 'dart:io';

void main() {
  informarValores();
}

String informarValores() {
  Map identidade = {};

  for (int i = 0; i < 5; i++) {
    print("Informe seu nome");
    String nome = stdin.readLineSync()!;

    print("Informe sua idade");
    var idade = stdin.readLineSync()!;
    int id = int.parse(idade);

    print("Informe sua altura");
    var altura = stdin.readLineSync()!;
    double h = double.parse(altura);

    identidade['$nome'] = 'Idade = $id  Altura = $h';
  }

  print(identidade);
  return '$identidade';
}
