class Televisor {
  int canal = 0;
  int volume = 0;

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
