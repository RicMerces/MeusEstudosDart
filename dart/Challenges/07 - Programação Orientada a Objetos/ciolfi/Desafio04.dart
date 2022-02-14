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
    this.altura += 0.5;
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

  print(p);
}
