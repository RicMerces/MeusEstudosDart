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

  print(c);
  print(g);
}

class Cachorro extends Animal {
  void latir() {
    print("AUAUAUAUAU");
  }

  @override
  void dormir() {
    print("**ROCANDO**");
  }
}

class Gato extends Animal {
  void miar() {
    print("Miaaaauuuu");
  }

  @override
  void dormir() {
    print("**RORONANDO**");
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

  String toString() {
    return 'Nome do bixinho : $nome Idade : $idade';
  }
}
