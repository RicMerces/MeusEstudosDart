import 'dart:io';

void main() {
  print("Informe seu nome");
  var n = stdin.readLineSync()!;

  print("Informe seu salario");
  var sal = stdin.readLineSync()!;
  double s = double.parse(sal);

  Funcionario f = new Funcionario(nome: n, salario: s);

  print(f);
}

class Funcionario {
  Funcionario({required this.nome, required this.salario});

  String nome;
  double salario;

  String toString() {
    return '\n ------------------ \nNome do Funcionario : $nome\nSalario R\$ $salario \n------------------';
  }
}
