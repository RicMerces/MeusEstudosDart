class Carro {
  Carro({required this.qtdCombustivel});

  double qtdCombustivel;
  double distancia = 0;
  double litro = 0;

  double andar(double d) {
    distancia = d;
    litro -= distancia / qtdCombustivel;
    return litro;
  }

  double adicionarGasolina(double c) {
    print("ABASTECENDO");
    litro += c;
    return litro;
  }

  String obteGasolina() {
    return '$litro L restantes';
  }
}

void main() {
  Carro c = new Carro(qtdCombustivel: 15);

  print(c.adicionarGasolina(100));
  c.andar(1000);
  print(c.obteGasolina());
}
