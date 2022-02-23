import 'dart:io';

void main() {
  print("Informe seu nome");
  var n = stdin.readLineSync()!;

  print("Informe seu salario");
  var sal = stdin.readLineSync()!;
  double s = double.parse(sal);

  Funcionario f = new Funcionario(nome: n, salario: s);

  f.adicionarSalario(20);
  print(f);
}

class Funcionario {
  Funcionario({required this.nome, required this.salario});

  String nome;
  double salario;

  adicionarSalario(double adicionar) {
    salario += salario * (adicionar * 0.01);
    return salario;
  }

  String toString() {
    return '\n ------------------ \nNome do Funcionario : $nome\nSalario R\$ $salario \n------------------';
  }
}
