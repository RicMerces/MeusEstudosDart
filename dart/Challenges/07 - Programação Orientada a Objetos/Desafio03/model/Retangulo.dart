class Retangulo {
  double ladoA = 0;
  double ladoB = 0;

  String mudarLados(double novoLadoA, double novoLadoB) {
    this.ladoA = novoLadoA;
    this.ladoB = novoLadoB;

    return '$novoLadoA $novoLadoB';
  }

  double calcularPerimetro() {
    double perimetro = (2 * (this.ladoA)) + (2 * (this.ladoB));
    return perimetro;
  }

  double calcularArea() {
    double area = (this.ladoA * this.ladoB);
    return area;
  }

  String retornarValores() {
    return 'As medidas são =\n lado A : $ladoA\nlado B : $ladoB';
  }
}
