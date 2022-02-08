import 'Ponto.dart';

class Retangulo {
  Retangulo([this._altura = 0, this._largura = 0]);

  double _largura;
  double _altura;

  // var verticeInferiorEsquerdo = new Ponto(0, 0);
  // var verticeInferiorDireiro = new Ponto(largura, 0);
  // var verticeSuperiorEsquerdo = new Ponto(0, altura);
  // var verticeSuperiorDireiro = new Ponto(largura, altura);
  Ponto ponto = new Ponto();

  centro() {
    ponto.x = largura;
    ponto.y = altura;
  }

  double get largura {
    return this._largura;
  }

  double get altura {
    return this._altura;
  }

  void set largura(double w) {
    this._largura = w;
  }

  void set altura(double h) {
    this._altura = h;
  }

  String toString() {
    return '${ponto.imprimirPonto()}';
  }
}
