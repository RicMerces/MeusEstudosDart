class Tamagushi {
  String _nome = '';
  bool saude = false;
  int _idade = 0;
  int fome = 15;
  String humor = '';

  Tamagushi([this._idade = 0, this._nome = '']);

  int alimentar() {
    this.fome--;
    return fome;
  }

  String medirHumor() {
    if (saude == true) {
      humor = '$nome esta bem humorado';
    } else {
      humor = '$nome esta mal humorado';
    }
    return humor;
  }

  bool medirSaude() {
    if (fome > 5 || fome < 0) {
      this.saude = false;
    } else {
      this.saude = true;
    }
    return saude;
  }

  int get idade {
    return this._idade;
  }

  void set idade(int novaIdade) {
    this._idade = novaIdade;
  }

  String get nome {
    return this._nome;
  }

  void set nome(String novoNome) {
    this._nome = novoNome;
  }

  String toString() {
    return '--------------------------------------------------\nNome final do Bixinho = $nome\nIdade do bixinho = $idade\nHumor do tamagoshi = $humor\n --------------------------------------------------';
  }
}
