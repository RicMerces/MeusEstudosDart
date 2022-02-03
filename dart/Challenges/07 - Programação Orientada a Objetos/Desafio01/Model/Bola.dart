class Bola {
  String cor = '';
  double circuferencia = 0;
  String material = '';

  String trocarCor(String novaCor) {
    this.cor = novaCor;
    return novaCor;
  }

  String mostrarCor() {
    return 'A COR SELECIONADA = $cor';
  }

  // Bola(this.cor, this.circuferencia, this.material);
}
