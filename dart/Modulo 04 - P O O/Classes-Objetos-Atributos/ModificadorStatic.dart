void main() {
  Pessoa pessoa01 = Pessoa(nome: 'Ricardo', idade: 20);
  pessoa01.nome;
  pessoa01.idade;
  pessoa01.comer();

  //O static é usado para casos mais amplos diferentemente de atrubutos diretos que é necessario
  // uma instanciação para diferentes objetos
  Pessoa.atributoStatic = ', Sou de marte';

  print(Pessoa.atributoStatic);
  print(Pessoa.metodoStatic());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  void comer() {
    print('Comendo...');
  }

  static String atributoStatic = 'abc';

  static String metodoStatic() {
    return 'Ola Mundo $atributoStatic';
  }
}
