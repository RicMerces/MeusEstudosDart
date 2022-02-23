void main() {
  Cachorro c = new Cachorro('Simba', 27);

  Gato g = new Gato('Kyra', 2);

  print(c);
  c.dormir();

  print(g);
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print("AUAUAUAUAU");
  }

  @override
  void dormir() {
    super.dormir();
    print("**ROCANDO**");
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  void miar() {
    print("Miaaaauuuu");
  }

  @override
  void dormir() {
    print("**RORONANDO**");
  }
}

class Animal {
  Animal(this.nome, this.idade);

  String nome;
  int idade;

  void comer() {
    print("$nome esta comendo");
  }

  void dormir() {
    print("zZzZZZZZzzz");
  }

  String toString() {
    return 'Nome do bixinho : $nome Idade : $idade';
  }
}
