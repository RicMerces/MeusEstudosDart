class Pessoa {
  String nome = '';
  int idade = 0;
  double peso = 0;
  double altura = 0;

  int envelhecer() {
    this.idade++;
    if (idade < 21) {
      crescer();
    }
    return this.idade;
  }

  double engordar(double ganho) {
    this.peso += ganho;
    return this.peso;
  }

  double emagrecer(double perda) {
    this.peso -= perda;
    return this.peso;
  }

  double crescer() {
    this.altura += 0.05;
    return this.altura;
  }
}
