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
}

class Cachorro extends Animal {
  // String? nome;
  // int? idade;

  // void comer() {
  //   print("Comendo");
  // }

  // void dormir() {
  //   print("zZzZZZZZzzz");
  // }

  void latir() {
    print("AUAUAUAUAU");
  }
}

class Gato extends Animal {
  // String? nome;
  // int? idade;

  // void comer() {
  //   print("Comendo");
  // }

  // void dormir() {
  //   print("zZzZZZZZzzz");
  // }

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
