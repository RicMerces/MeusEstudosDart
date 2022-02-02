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

    if (this.velocidadeAtual == this.velocidadeMax) {
      l = true;
    }

    return l;
  }

  Data(this.velocidadeMax, this.velocidadeAtual);

  String toString() {
    String resultado = '';
    if (estaNoLimite() == true) {
      resultado = 'Verdadeiro';
    } else {
      resultado = 'Falso';
    }
    return 'Velocidade atual $velocidadeAtual\nVelocidade Maxima que você pode chegar $velocidadeMax\nAtingiu a velocidade Maxima ? $resultado';
  }
}
