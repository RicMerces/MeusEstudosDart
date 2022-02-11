class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int acelerar() {
    if (velocidadeAtual > velocidadeMaxima) {
      velocidadeAtual = velocidadeMaxima;
    } else {
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }

  int desacelerar() {
    if (velocidadeAtual < 0) {
      velocidadeAtual == 0;
    } else {
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }

  bool atingiuOMax() {
    return velocidadeAtual == velocidadeMaxima;
  }
}
