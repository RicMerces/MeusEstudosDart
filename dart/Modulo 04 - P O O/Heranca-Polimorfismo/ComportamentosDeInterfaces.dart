void main() {
  Movimentar m1 = new Carro();
  m1.esqueda();
  m1.frente();
  valorDeMecardo m2 = new Geladeira();
  m2.preco;
}

class Geladeira implements valorDeMecardo {
  @override
  double? preco;
}

class Pessoa implements Movimentar {
  String? nome;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esqueda() {
    // TODO: implement esqueda
  }

  @override
  void frente() {
    // TODO: implement frente
  }
}

class Carro implements Movimentar, valorDeMecardo {
  String? modelo;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esqueda() {
    // TODO: implement esqueda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  double? preco;
}

abstract class Movimentar {
  void frente();
  void direita();
  void esqueda();
}

abstract class valorDeMecardo {
  double? preco;
}
