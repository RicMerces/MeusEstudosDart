class Data {
  final int velocidadeMax;
  int velocidadeAtual;

  int acelerar() {
    if (velocidadeAtual >= velocidadeMax) {
    } else {
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }

  int freio() {
    if (velocidadeAtual <= 0) {
    } else {
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }

  bool estaNoLimite() {
    bool l = false;

    if (velocidadeAtual == velocidadeMax) {
      l = true;
    }

    return l;
  }

  Data(this.velocidadeMax, this.velocidadeAtual);
}
