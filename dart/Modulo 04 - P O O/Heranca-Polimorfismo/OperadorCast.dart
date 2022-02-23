void main() {
  Cachorro c = new Cachorro('Nina', 15);
  c.comer();
  c.dormir();

  Gato g = new Gato('Toquinho', 1);
  g.miar();
  g.dormir();
  g.comer();

  Animal animal1 = funcao();
  if (animal1 is Gato) {
    animal1.miar();
  }

  Gato g2 = funcao() as Gato;

  g2.miar();

  print(animal1);
  print(g2);
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print("AUAUAUAUAU");
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  void miar() {
    print("Miaaaauuuu");
  }
}

Animal funcao() {
  return Gato('Kyra', 2);
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
    return 'Nome do bixinho : $nome\nIdade : $idade';
  }
}
