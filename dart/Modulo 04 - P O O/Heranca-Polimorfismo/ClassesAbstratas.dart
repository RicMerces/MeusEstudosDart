void main() {
  Cachorro c = new Cachorro('Nina', 15);
  c.comer();
  c.dormir();

  Gato g = new Gato('Toquinho', 1);
  g.miar();
  g.dormir();
  g.comer();

  print(g);
  print(c);
  c.defecar();
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print("AUAUAUAUAU");
  }

  void defecar() {
    print('Vezes nivel 4');
  }

  @override
  String toString() {
    return 'Especie : Cachorro \n' + super.toString();
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  void miar() {
    print("Miaaaauuuu");
  }

  void defecar() {
    print('Fezes nivel 7');
  }

  @override
  String toString() {
    return 'Especie : Gato \n' + super.toString();
  }
}

abstract class Elefante extends Animal {
  Elefante(String nome, int idade) : super(nome, idade);

  void gerarBramidos() {
    print("*Som de elefante");
  }

  void defecar() {
    print("Fezes nivel 10");
  }

  @override
  String toString() {
    return 'Especie : Elefante \n' + super.toString();
  }
}

abstract class Animal {
  Animal(this.nome, this.idade);

  String nome;
  int idade;

  void comer() {
    print("$nome esta comendo");
  }

  void dormir() {
    print("zZzZZZZZzzz");
  }

  void defecar();

  String toString() {
    return 'Nome : $nome \nIdade : $idade';
  }
}
