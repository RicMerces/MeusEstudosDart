import 'dart:io';

class Pessoa {
  Pessoa({required this.idade, required this.altura, required this.peso});

  String? _nome;
  int idade;
  double altura;
  double peso;

  int envelhecer() {
    if (idade < 21) {
      crescer();
    }
    this.idade++;
    return idade;
  }

  double crescer() {
    this.altura += 0.05;
    return altura;
  }

  double engordar(double npeso) {
    this.peso += npeso;
    return peso;
  }

  double emagrecer(double npeso) {
    this.peso -= npeso;
    return peso;
  }

  String? get nome {
    return this._nome;
  }

  void set nome(String? novoNome) {
    this._nome = novoNome;
  }

  String calcularImc() {
    double imc = peso / altura;
    return 'O IMC $imc';
  }

  String toString() {
    return 'Nome : $nome\nIdade = $idade\nAltura = $altura\nPeso = $peso';
  }
}

void main() {
  print("Olá meu camarada vamos iniciar seu shape !!\nInforme seu nome ");
  String name = stdin.readLineSync()!;
  print("Informe sua idade ");
  var id = stdin.readLineSync()!;
  print("Informe sua altura atual");
  var h = stdin.readLineSync()!;
  print("Informe seu peso");
  var m = stdin.readLineSync()!;
  Pessoa p = new Pessoa(
      idade: int.parse(id), altura: double.parse(h), peso: double.parse(m));
  p.nome = name;
  print('Chape atual = \n $p');

  print("Durante quantos anos você deseja ver sua mudança");
  var time = stdin.readLineSync()!;

  for (int i = 0; i < int.parse(time); i++) {
    p.envelhecer();
    print("Digite \n(1)Se vc emagreceu\n(2)Se vc engordou ");
    var resp = stdin.readLineSync()!;
    print("Quanto ?");
    var qtd = stdin.readLineSync()!;

    while (int.parse(resp) > 2 || int.parse(resp) < 1) {
      print("Digite \n(1)Se vc emagreceu\n(2)Se vc engordou ");
      resp = stdin.readLineSync()!;
    }
    if (int.parse(resp) == 1) {
      p.emagrecer(double.parse(qtd));
    } else if (int.parse(resp) == 2) {
      p.engordar(double.parse(qtd));
    }

    print(p.calcularImc());
    print('$p');
  }
}
