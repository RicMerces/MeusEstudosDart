class Televisor {
  int canal = 0;
  int volume;
  // List<NomeCanal> listaDeCanais;
  Televisor(this.canal, {this.volume = 50});

  int informarCanal(numeroDoCanal) {
    this.canal = numeroDoCanal;
    return canal;
  }

  int subirCanal() {
    this.canal++;
    return canal;
  }

  int descerCanal() {
    this.canal--;
    return canal;
  }

  int aumentarVolume() {
    this.volume++;
    return volume;
  }

  int diminuirVolume() {
    this.volume++;
    return volume;
  }
}
