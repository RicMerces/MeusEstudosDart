void main() {
  Cachorro c = new Cachorro();
  c.nome = 'Nina';
  c.idade = 15;
  c.comer();
  c.dormir();

  Gato g = new Gato();
  g.nome = 'Toquinho';
  g.idade = 1;
  g.miar();
  g.dormir();
  g.comer();

  List<Cachorro> cachorros = [];
  List<Gato> gatos = [];
  List<Animal> animais = [];

  animais.add(c);
  animais.add(g);

  Animal animal1 = animais.first;
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
}

class Cachorro extends Animal {
  void latir() {
    print("AUAUAUAUAU");
  }
}

class Gato extends Animal {
  void miar() {
    print("Miaaaauuuu");
  }
}

class Animal {
  String? nome;
  int? idade;

  void comer() {
    print("$nome esta comendo");
  }

  void dormir() {
    print("zZzZZZZZzzz");
  }
}
