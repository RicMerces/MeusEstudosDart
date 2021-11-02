import 'dart:io';

// Faça um programa que leia e valide as seguintes informações:
// Nome: maior que 3 caracteres;
// Idade: entre 0 e 150;
// Salário: maior que zero;
// Sexo: 'f' ou 'm';
// Estado Civil: 's', 'c', 'v', 'd';

void main() {
  print("Informe nome");
  String nome = stdin.readLineSync()!;

  while (nome.length < 3) {
    print("Nome invalido\nInforme um nome com mais de 3 caracteres");
    nome = stdin.readLineSync()!;
  }

  print("Informe sua idade");
  var idade = stdin.readLineSync()!;
  int age = int.parse(idade);

  while (age > 150 || age < 1) {
    print("Idade invalida \nInforme sua idade novamente");
    idade = stdin.readLineSync()!;
    age = int.parse(idade);
  }

  print("Informe seu salario");
  var salario = stdin.readLineSync()!;
  double value = double.parse(salario);

  while (value <= 0) {
    print("Salario invalido\nInforme seu salario novamente");
    salario = stdin.readLineSync()!;
    value = double.parse(salario);
  }

  print("Informe seu Sexo");
  String sex = stdin.readLineSync()!;

  while (sex.toLowerCase() != 'Masculino'.toLowerCase() &&
      sex.toLowerCase() != 'Feminino'.toLowerCase() &&
      sex.toLowerCase() != 'Outro') {
    print(
        "Genero armazenado para analise de equipe\nDigite outro para caso de genero diferente de masculino e feminino");
    sex = stdin.readLineSync()!;
  }

  print("Informe seu estado estado civil");
  String eC = stdin.readLineSync()!;
  while (eC != 's' && eC != 'c' && eC != 'v' && eC != 'd') {
    if (eC.length > 1) {
      print("Informe seu estado civil com apenas um character");
    } else {
      print("Esse Estado civil não foi encontrado");
    }
    eC = stdin.readLineSync()!;
  }

  print("Ola $nome seus dados foram salvos");
}
