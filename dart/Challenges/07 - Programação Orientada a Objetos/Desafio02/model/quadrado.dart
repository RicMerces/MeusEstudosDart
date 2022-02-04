class Quadrado {
  int tamanhoDoLado;

  int mudarValor(int novoValor) {
    this.tamanhoDoLado = novoValor;
    return this.tamanhoDoLado;
  }

  Quadrado(this.tamanhoDoLado);

  int calcularArea() {
    int area = tamanhoDoLado * tamanhoDoLado;
    return area;
  }

  String toString() {
    String r = "$calcularArea()";
    return 'O valor = $tamanhoDoLado';
  }
}
